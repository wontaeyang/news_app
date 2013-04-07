class Comment < ActiveRecord::Base
  attr_accessible :link_id, :message, :user_id
  validates :message, length: {minimum: 2}, presence: true

  belongs_to :link
end
