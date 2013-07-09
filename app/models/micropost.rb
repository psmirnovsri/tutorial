class Micropost < ActiveRecord::Base

  validates :content, presence: true, length: { maximum: 140 }
  belongs_to :user
  default_scope -> { order('created_at DESC') }
  validates :user_id, presence: true

end
