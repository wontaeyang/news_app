class Comment < ActiveRecord::Base
  attr_accessible :link_id, :message, :user_id, :parent_id, :parent_link_id
  belongs_to :link
  has_ancestry

  validates :message, length: {minimum: 2}, presence: true

  default_scope order: 'comments.created_at ASC'


end
