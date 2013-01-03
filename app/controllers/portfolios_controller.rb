class PortfoliosController < InheritedResources::Base

  actions :show, :new, :index, :create

  def new
    @portfolio = Portfolio.new
    @portfolio.assets.build
  end

  protected

    def begin_of_association_chain
      current_user
    end

end