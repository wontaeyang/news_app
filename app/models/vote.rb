class Vote < ActiveRecord::Base
  attr_accessible :link_id, :up, :user_id
end
