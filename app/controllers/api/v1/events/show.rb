# frozen_string_literal: true

module API
  module V1
    module Events
      class Show < Grape::API
        desc 'Returns an event'
        params { requires :id, type: Integer, desc: 'ID of the event' }
        get { @event }
      end
    end
  end
end
