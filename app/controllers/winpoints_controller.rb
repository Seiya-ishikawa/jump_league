class WinpointsController < ApplicationController
  def new
    @comics = Comic.order(match: "ASC").limit(2)
    @winpoint = Winpoint.new
    @winpoint.matches.new
  end

  def create
    @winpoint = Winpoint.new(point_params)
  end

  private

  def point_params
    params.require(:winpoint).permit(:point, matches_attributes:[:quantity])
  end
end
