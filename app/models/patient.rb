class Patient < ApplicationRecord
  belongs_to :user
  validates :name, :birthday, :gender, :address, :degree_of_care, :key_person, presence: true
end
