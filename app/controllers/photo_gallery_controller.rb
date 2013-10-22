class PhotoGalleryController < ApplicationController
  def index
    @images = Dir.glob("app/assets/images/photo_gallery/*")
  end
end
