# frozen_string_literal: true

class Run < ApplicationRecord
  # include Authentication
  belongs_to :user

  attribute :time do
    object.time.strftime '%T'
  end

  validates :distance, :time, :user, presence: true
end
