module Webinterface
  class CarsController < ApplicationController
    def index
      @cars = Car.all # creates an anonymous scope
      @search = params["search"]
      if @search.present?
        @cars = @cars.filter_by_brand(@search['brand']) if @search['brand'].present?
        @cars = @cars.filter_by_model(@search['model']) if @search['model'].present?
        @cars = @cars.filter_by_year(@search['year']) if @search['year'].present?
      end
    end
  end
end
