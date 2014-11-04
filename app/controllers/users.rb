get '/login/' do
  erb :'users/new'
end

post '/users' do
  if params[:submit] == "create"
    new_user = User.new(username: params[:username], password: params[:password])
    new_user.save
    session[:user_id] = new_user.id
        redirect "/"
  else
    # byebug
    if User.valid?(params[:username])
    new_user = User.where(username: params[:username]).first
      if new_user.authenticate(params[:password])
        session[:user_id] = new_user.id
        redirect "/"
      else

      end
    else
      redirect "/?notice=no_account"
    end
  end

end