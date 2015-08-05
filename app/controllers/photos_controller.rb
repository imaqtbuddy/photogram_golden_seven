class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

def show
@photo_id=params["id"]
@photo_source=Photo.find(@photo_id).source
@photo_caption=Photo.find(@photo_id).caption
render ("show.html.erb")
end

def new_form
render("new_form.html.erb")
end

def create_photo
  render("create_photo.html.erb")
end

end
