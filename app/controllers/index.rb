use Rack::Flash

get '/' do
  # Look in app/views/index.erb
  if session[:user_id] == nil
    redirect '/login'
  else
    erb 'albums/list'
  end
end
