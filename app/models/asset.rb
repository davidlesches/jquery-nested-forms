class Asset < ActiveRecord::Base

  # An asset is each stock that a user owns as part of his portfolio. Just a nicer model name than PortfolioStock

  belongs_to :stock
  belongs_to :portfolio

  attr_accessible :amount, :long_short, :stock_id, :user_id

end
