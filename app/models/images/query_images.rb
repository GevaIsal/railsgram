# frozen_string_literal: true

module Images
  # Service object get info from Image
  class QueryImages
    def self.all_basic_info_json
      Image.all.to_json(only: %i[id name])
    end
  end
end
