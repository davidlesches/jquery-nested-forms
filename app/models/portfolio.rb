class Portfolio < ActiveRecord::Base

  belongs_to :user
  has_many :assets

  attr_accessible :title, :assets_attributes
  accepts_nested_attributes_for :assets, allow_destroy: true

  validates :title, presence: true

end
