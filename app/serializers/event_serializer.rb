# frozen_string_literal: true

class EventSerializer < ActiveModel::Serializer
  attributes :id, :name, :date, :available_tickets_amount

  def date
    object.date.strftime('%d.%m.%Y %H:%M')
  end

  def available_tickets_amount
    object.tickets.count
  end
end
