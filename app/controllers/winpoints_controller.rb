class WinpointsController < ApplicationController
  before_action :set_comic_id, only:[:new,:create]
  def new
    @winpoint = Winpoint.new
    @winpoint.matches.build
  end

  def create
    @winpoint = Winpoint.new(point_params)
    if @winpoint.save
    redirect_to root_path
    else
      render :new
    end
  end

  private

  def set_comic_id
    if Winpoint.count > 20
      @comics = Comic.order(match: "ASC").limit(2)
      else
        @comics=Comic.order("RAND()").limit(2)
      end
  end

  def point_params
    params.require(:winpoint).permit(:point,:comic_id).merge(user_id: current_user.id)
  end
end
