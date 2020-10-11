# frozen_string_literal: true

class Image < ApplicationRecord
  mount_uploader :picture, PictureUploader

  validates :description, presence: true
end
