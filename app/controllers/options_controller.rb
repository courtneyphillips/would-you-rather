class OptionsController < ApplicationController

  def index
    @options = Option.all
  end

  def show
  end

  def new
    @bout = Bout.find(params[:bout_id])
    @option = @bout.options.new
  end

  def create
    @bout = Bout.find(params[:bout_id])
    @option = @bout.options.create(option_params)
    if @option.save
      flash[:notice] = "Option saved!"
      redirect_to bout_path(@bout)
    else
      render :new
    end
  end

  private

  def option_params
    params.require(:option).permit(:name, :description, :votes)
  end


end
