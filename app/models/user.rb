class User < ApplicationRecord
  has_secure_password
  has_many :orders
  def display_user_list
      "#{first_name} #{last_name}"
  end
end
