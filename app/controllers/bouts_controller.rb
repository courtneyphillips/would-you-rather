class BoutsController < ApplicationController

  def index
    @bouts = Bout.all
  end

  def show
    @bout = Bout.find(params[:id])
  end

  def new
    @bout = Bout.new
    1.times {@bout.options.build}
  end

  def create
    @bout = Bout.new(bout_params)
    if @bout.save()
      respond_to do |format|
        format.html {redirect_to bouts_path}
        format.js
      end
    else
      render :new
    end
  end

  private

  def bout_params
    params.require(:bout).permit(:created_at, options_attributes: [:description, :name])
  end


end
