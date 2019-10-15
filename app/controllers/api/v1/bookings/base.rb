# frozen_string_literal: true

module API
  module V1
    module Bookings
      class Base < Grape::API
        namespace :bookings do
          mount Create

          route_param :id do
            before { @booking = Booking.find(params[:id]) }

            # mount Show
          end
        end
      end
    end
  end
end
