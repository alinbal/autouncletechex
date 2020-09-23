# frozen_string_literal: true

module Api
  module V1
    class CarsController < ApplicationController
      def index
        @cars = Car.filter(params.slice(:brand, :model, :year))
        # @cars = Car.where(nil) # creates an anonymous scope
        # @cars = @cars.filter_by_brand(params[:brand]) if params[:brand].present?
        # @cars = @cars.filter_by_model(params[:model]) if params[:model].present?
        # @cars = @cars.filter_by_year(params[:year]) if params[:year].present?
        render json: {status: 'SUCCESS', message: 'Loaded Cars', data: @cars}, status: :ok
      end

      private

      # A list of the param names that can be used for filtering the Product list
      def filtering_params(params)
        params.slice(:brand, :model, :year)
      end
    end
  end
end