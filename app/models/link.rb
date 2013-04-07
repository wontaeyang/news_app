class Link < ActiveRecord::Base
  attr_accessible :comment, :title, :url, :user_id

  validates_format_of :url, :with => URI::regexp(%w(http https))
  validates :title, presence: true, uniqueness: true
  validates :url, presence: true
  
  belongs_to :user
  has_many :comments
end
