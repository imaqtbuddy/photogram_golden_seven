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
    i=Photo.new
    i.source=params["the_source"]
    i.caption=params["the_caption"]
    i.save
    redirect_to("http://localhost:3000/photos")
  end

  def destroy
    @photo_id=params["id"]
    i = Photo.find(@photo_id)
    i. destroy
    redirect_to("http://localhost:3000/photos")
  end

  def edit_form
    @photo_id=params["id"]
    @photo_source=Photo.find(@photo_id).source
    @photo_caption=Photo.find(@photo_id).caption
    render("edit_form.html.erb")
  end

  def update_photo
    @photo_id=params["id"]
    i = Photo.find(@photo_id)
    i.source=params["the_source"]
    i.caption=params["the_caption"]
    i. save
    redirect_to action:"show"
  end

  end
