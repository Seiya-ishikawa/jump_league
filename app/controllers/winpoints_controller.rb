class WinpointsController < ApplicationController
  def new
    @comics = Comic.order(match: "ASC").limit(2)
  end
end
