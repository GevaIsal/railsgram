class ImagesController < ApplicationController
    before_action :set_currency, only: %i[show]
    # def create
    # () esto ayuda a inspeccionar si se esta enviando la informacion del formulario
    #   => render plain: params[:image].inspect
    # end

    def index
        @images = Image.all
    end

    def show; end
    
    def new
        @image = Image.new
    end

    def create
        @image = Images::CreateImage.new(images_params).save
        redirect_to @image
    end

    private

    def set_currency
        @image = Image.find(params[:id])
    end

    def images_params
        params.require(:image).permit(:description)
    end
end
