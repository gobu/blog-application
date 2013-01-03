class Like < ActiveRecord::Base
  belongs_to :table
  attr_accessible :comment, :name
end
