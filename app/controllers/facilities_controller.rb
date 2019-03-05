class FacilitiesController < ApplicationController

  def index
    @q = Facility.ransack(params[:q])
    @facilities = @q.result.includes(:facility_address)
  end

  def show
    @facility = Facility.find(params[:id])
  end

  private

  def facilities_params
    params.require(:facility).permit(:id, :facility_id, :facility_name, :query)
  end
end
