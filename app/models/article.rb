class Article < ApplicationRecord
    with_options presence: true do
        validates :title
        validates :url
        validates :count
    end

    validates :title, length: { maximum: 30 }
end
