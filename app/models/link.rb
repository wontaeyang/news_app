class Link < ActiveRecord::Base
  attr_accessible :comment, :title, :url, :user_id
  belongs_to :user
end
