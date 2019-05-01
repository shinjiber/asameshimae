# frozen_string_literal: true

class Item < ApplicationRecord
  validates :name, presence: true
  validates :image, presence: true
  validates :price, presence: true
end
