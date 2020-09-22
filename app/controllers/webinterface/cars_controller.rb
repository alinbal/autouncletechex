module Webinterface
  class CarsController < ApplicationController
    def index
      @cars = Car.all # creates an anonymous scope
      @cars = @cars.filter_by_brand(params[:brand]) if params[:brand].present?
      @cars = @cars.filter_by_model(params[:model]) if params[:model].present?
      @cars = @cars.filter_by_year(params[:year]) if params[:year].present?
    end
  end
end
