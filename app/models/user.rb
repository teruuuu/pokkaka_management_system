class User < ApplicationRecord
  has_many :patients, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable,
         :rememberable, :validatable

  def self.guest
    find_or_create_by!(id: 999, email: "guest@example.com", name: "ゲストユーザー") do |user|
      user.password = SecureRandom.urlsafe_base64
    end
  end
end
