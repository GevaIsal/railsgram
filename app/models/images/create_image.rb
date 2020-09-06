module Images
    # Service object create Image
    class CreateImage
        def initialize(params)
            @params = params
        end

        def save
            @image = Image.new @params
            @image.save
            @image #no se para que sirve
        end
    end
end