# frozen_string_literal: true

module Api
  module V1
    class CarsController < ApplicationController
      def index
        cars = Car.order('created_at DESC')
        render json: {status: 'SUCCESS', message: 'Loaded Cars', data: cars}, status: :ok
      end
    end
  end
end
