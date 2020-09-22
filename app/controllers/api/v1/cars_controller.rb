# frozen_string_literal: true

module Api
  module V1
    class CarsController < ApplicationController
      def index
        @cars = Car.where(nil) # creates an anonymous scope
        @cars = @cars.filter_by_brand(params[:brand]) if params[:brand].present?
        @cars = @cars.filter_by_model(params[:model]) if params[:model].present?
        @cars = @cars.filter_by_year(params[:year]) if params[:year].present?
        render json: {status: 'SUCCESS', message: 'Loaded Cars', data: @cars}, status: :ok
      end
    end
  end
end