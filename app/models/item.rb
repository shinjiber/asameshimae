# frozen_string_literal: true

class Item < ApplicationRecord
  mount_uploader :image, ImagesUploader
  validates :name, presence: true
  validates :image, presence: true
  validates :price, presence: true
end
