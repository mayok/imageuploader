class ImagesController < ApplicationController
  def new
    @image = Image.new
  end

  def create
    @image = Image.new(image_params)
    if @image.save
      flash[:success] = "Successfully files uploaded."
      redirect_to root_url
    else
      render 'new'
    end
  end

  private

    def image_params
      params.require(:image).permit(:title, :caption, :picture)
    end

end
