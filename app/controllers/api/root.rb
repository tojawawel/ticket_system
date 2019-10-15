# frozen_string_literal: true

module API
  class Root < Grape::API
    include Rescuers
    mount API::V1::Base

    add_swagger_documentation \
      mount_path: '/docs',
      produces: 'application/vnd.api+json',
      info: {
        title: 'Ticketing System',
      }
  end
end
