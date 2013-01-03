class Stock < ActiveRecord::Base

  has_many :assets

  attr_accessible :name, :symbol
  validates_uniqueness_of :symbol

end
