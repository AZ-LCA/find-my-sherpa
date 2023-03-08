class Post < ApplicationRecord
    validates :user_id, :activity, :info, presence: true
    has_many :comments, dependent: :destroy
  end