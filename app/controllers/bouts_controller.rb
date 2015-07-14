class BoutsController < ApplicationController

  def index
    @bouts = Bout.all
  end

  def show
    @bout = Bout.find(params[:id])
  end

  def new
    @bout = Bout.new
  end

  def create
    @bout = Bout.new(bout_params)
  end

  private

  def bout_params
    params.require(:bout).permit(:created_at)
  end


end
