# frozen_string_literal: true

module API
  module Rescuers
    extend ActiveSupport::Concern

    included do
      rescue_from ActiveRecord::RecordInvalid, Grape::Exceptions::ValidationErrors do |ex|
        error_response(message: ex.message, status: 422)
      end
      rescue_from ActiveRecord::RecordNotDestroyed do |ex|
        error_response(message: ex.message, status: 422)
      end
      rescue_from ActiveRecord::RecordNotFound do |ex|
        error_response(message: ex.message, status: 404)
      end
      rescue_from ActiveRecord::ConfigurationError do |ex|
        error_response(message: ex.message, status: 422)
      end
      # rescue_from ActionPolicy::Unauthorized do |ex|
      #   render_jsonapi_errors I18n.t('access_denied'), 401, ex
      # end
    end
  end
end
