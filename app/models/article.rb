class Article < ApplicationRecord
    with_options presence: true do
        validates :title
        validates :url
    end

    validates :title, length: { maximum: 30 }

    belongs_to :user
end
