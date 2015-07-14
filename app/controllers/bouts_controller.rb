class BoutsController < ApplicationController

  def index
    @bouts = Bout.all
  end

  def show
  end

end
