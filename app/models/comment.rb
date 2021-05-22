class Comment < ApplicationRecord

	validates :name, presence: true, length: { minimum: 3 }
	validates :productname, presence: true, length: { minimum: 5 }
	validates :description, presence: true, length: { maximum: 1000,
    too_long: "%{count} characters is the maximum allowed" }
end
