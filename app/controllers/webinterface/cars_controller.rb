module Webinterface
  class CarsController < ApplicationController
    before_action :authenticate

    def authenticate
      authenticate_or_request_with_http_basic('Administration') do |username, password|
        username == 'admin' && password == 'AutoAuntBeta'
      end
    end

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
