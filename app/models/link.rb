class Link < ActiveRecord::Base
  attr_accessible :comment, :title, :url, :user_id

  validates_format_of :url, :with => URI::regexp(%w(http https))
  
  belongs_to :user
end
