class Post < ActiveRecord::Base
	extend FriendlyId
  friendly_id :title, use: :slugged

	default_scope -> { order(created_at: :desc) }
	validates :title, presence: true, length: { maximum: 60 }
	validates :content, presence: true
end
