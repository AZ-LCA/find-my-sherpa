class Comment < ApplicationRecord
    validates :user_id, :body, :post_id, presence: true
    belongs_to :post
    belongs_to :user
  end