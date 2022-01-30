class TimeFrame < ApplicationRecord
  validates :start_time, :end_time, uniqueness: { scope: :end_time }
end
