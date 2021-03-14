class HotspringsController < ApplicationController
  def index
    @prefecture = Prefecture.find(params[:talk_id])
    @hotspring = Hotspring.new
    @hotsprings = Hotspring.all
  end

  def create
    @hotspring = Hotspring.new(hotspring_params)
    if @hotspring.save
      redirect_to talk_hotsprings_path
    else
      render :index
    end
  end

  def show
    @prefecture = Prefecture.find(params[:talk_id])
    hotspring = Hotspring.find(params[:id])
  end

  private

  def hotspring_params
    params.require(:hotspring).permit(:thread)
  end
end
