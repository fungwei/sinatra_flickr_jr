post '/albums'  do
      user = User.find(session[:user_id])
      new_album = user.albums.new(name: params[:name])
      if new_album.save
        redirect "/albums/#{new_album.id}"
      end
end

get '/albums/new' do
  erb :'albums/new'
end

get '/albums/:id' do
  @album = Album.find(params[:id])
  erb :'albums/show'
end