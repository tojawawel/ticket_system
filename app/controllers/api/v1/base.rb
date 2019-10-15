# frozen_string_literal: true

module API
  module V1
    class Base < Root
      prefix :api
      version 'v1', using: :path

      default_format :json
      content_type :json, 'application/json'
      formatter :json, Grape::Formatter::ActiveModelSerializers

      mount Events::Base
      mount Bookings::Base
    end
  end
end
