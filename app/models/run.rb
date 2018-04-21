# frozen_string_literal: true

class Run < ApplicationRecord
  # include Authentication
  belongs_to :user
  validates :distance, :time, :user, presence: true
end
