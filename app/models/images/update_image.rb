# frozen_string_literal: true

module Images
  # Service object update Image
  class UpdateImage
    def initialize(image, params)
      @image = image
      @params = params
    end

    def update
      @image.update(@params) ? true : false
    end
  end
end
