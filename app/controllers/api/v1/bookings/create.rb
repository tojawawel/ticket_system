# frozen_string_literal: true

module API
  module V1
    module Bookings
      class Create < Grape::API
        desc 'Create new booking'
        params do
          requires :event_id, type: Integer, desc: 'Event ID'
        end

        post  do
          booking = Booking.create(event_id: params[:event_id])
        end
      end
    end
  end
end
