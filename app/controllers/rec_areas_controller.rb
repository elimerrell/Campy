class RecAreasController < ApplicationController

  def index
    @areas = RecArea.all
  end

  def show
    @area = RecArea.find(params[:id])
  end
end
