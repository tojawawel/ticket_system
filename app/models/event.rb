# frozen_string_literal: true

class Event < ApplicationRecord
  validates :name, :date, presence: true
  validate :correct_date

  has_many :tickets

  def correct_date
    errors.add(:date, 'must be in the future!') if date.present? && date < Time.zone.now
  end
end
