class OptionsController < ApplicationController

  def index
    @options = Option.all
  end
  #
  # def show
  # end
  #
  # def new
  #   @bout = Bout.find(params[:bout_id])
  #   @option = @bout.options.new
  # end

  def update
      @bout = Bout.find(params[:bout_id])
      @option = @bout.options.find(params[:id])
      if @option.update(votes: @option.votes + 1)
        respond_to do |format|
          format.html { redirect_to bouts_path }
          format.js
        end
      end
    end


  private

  def option_params
    params.require(:option).permit(:name, :description, :votes)
  end


end
