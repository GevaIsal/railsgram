# frozen_string_literal: true

class ImagesController < ApplicationController
  before_action :set_images, only: %i[show edit update destroy]
  # def create
  # () esto ayuda a inspeccionar si se esta enviando la informacion del formulario
  #   => render plain: params[:image].inspect
  # end

  def index
    @images = Image.all
    # @images = Image.where user_id: current_user.id
  end

  def show; end

  def new
    @image = Image.new
  end

  def edit; end

  def create

    @image = current_user.images.new(images_params).save
    @image = Images::CreateImage.new(images_params).save
    if @image.persisted?
      redirect_to images_path
    else
      render :new
    end
  end

  def update
    if Images::UpdateImage.new(@image, images_params).update
      redirect_to @image
    else
      render :edit
    end
  end

  def destroy
    Images::DestroyImage.new(@image).destroy
    redirect_to images_url
  end

  private

  def set_images
    @image = Image.find(params[:id])
  end

  def images_params
    params.require(:image).permit(:description, :picture)
  end
end
