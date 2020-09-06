class ImagesController < ApplicationController

    def new
    end

    # def create
    # () esto ayuda a inspeccionar si se esta enviando la informacion del formulario
    #   => render plain: params[:image].inspect
    # end

    def create
        @image = Image.new images_params
        @image.save
    end

    private

    def images_params
        params.require(:image).permit(:description)
    end
end
