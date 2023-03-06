class Post < ApplicationRecord
    belongs_to :user
    validates :user_id, :activity, :info, presence: true
    validates :info, length: {minimum: 6, too_short: "must have at least %{count} characters"}
end
