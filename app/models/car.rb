# frozen_string_literal: true

class Car < ApplicationRecord
  has_many :adverts
  has_many :image_urls
end
