class Post < ActiveRecord::Base
	default_scope -> { order(created_at: :desc) }
	validates :title, presence: true, length: { maximum: 60 }
	validates :content, presence: true

end
