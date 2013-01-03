class AssetsController < ApplicationController

  def destroy
    @asset = Asset.find params[:id]
    @asset.destroy if @asset.portfolio.user == current_user
  end

end