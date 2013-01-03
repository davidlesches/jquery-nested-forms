class Asset < ActiveRecord::Base

  # An asset is each stock that a user owns as part of his portfolio. Just a nicer model name than PortfolioStock

  belongs_to :stock
  belongs_to :portfolio

  attr_accessible :amount, :long_short, :stock_id, :user_id

  after_create :destroy_on_nil

  def destroy_on_nil
    self.destroy if self.stock.nil?
  end

end
