class User < ApplicationRecord
    has_secure_password

    with_options presence: true do
        validates :name
        validates :email
    end

    with_options uniqueness: true do
        validates :name
        validates :email
    end

    validates :name, length: { maximum: 20 }

    has_many :articles
end
