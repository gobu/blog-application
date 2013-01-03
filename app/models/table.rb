class Table < ActiveRecord::Base
  attr_accessible :cellno, :content, :name
  has_many :likes , :dependent => :destroy
end
