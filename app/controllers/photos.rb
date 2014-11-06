post '/photo' do
  @album = Album.find(params[:album_id])
    @photo = @album.photos.build
    @photo.path = params[:path]
    if @photo.save
      redirect "/albums/#{album.id}"
    else
      erb :'/albums/show'
    end
end