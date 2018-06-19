class Dish < ApplicationRecord
	belongs_to :category
	belongs_to :user
	has_attached_file :logo, styles: { medium: "300x300>", thumb: "100x100>", small: "50x50>" }, default_url: "/images/Default.png"
    validates_attachment_content_type :logo, content_type: /\Aimage\/.*\z/
end
