# frozen_string_literal: true

class Car < ApplicationRecord
  scope :filter_by_brand, ->(brand) { where brand: brand }
  scope :filter_by_model, ->(model) { where car_model_name: model }
  scope :filter_by_year, ->(year) { where year: year }
  has_many :adverts
  has_many :image_urls
end
