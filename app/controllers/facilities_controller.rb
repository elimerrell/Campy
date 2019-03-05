class FacilitiesController < ApplicationController

  def index
    @facilities = Facility.search(params[:query])
  end

  def show
    @facility = Facility.find(params[:id])
  end

  private

  def facilities_params
    params.require(:facility).permit(:id, :facility_id, :FacilityName, :query)
  end
end
