# frozen_string_literal: true

module Images
  # Service object for destroy image
  class DestroyImage
    def initialize(image)
      @image = image
    end

    def destroy
      @image.destroy
    end
  end
end
