class RecAreasController < ApplicationController

  def index
    @q = RecArea.ransack(params[:q])
    @areas = @q.result
  end

  def show
    @area = RecArea.find(params[:id])
  end

  private

  def facilities_params
    params.require(:rec_area).permit(:id, :rec_area_name, :keywords, :query)
  end
end
