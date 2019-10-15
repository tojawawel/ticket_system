# frozen_string_literal: true

module API
  module V1
    module Events
      class Base < Grape::API
        namespace :events do
          route_param :id do
            before { @event = Event.find(params[:id]) }

            mount Show
          end
        end
      end
    end
  end
end
