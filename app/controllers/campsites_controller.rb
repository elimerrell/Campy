class CampsitesController < ApplicationController

  def index
    @campsites = Campsite.all
  end

  def show
  end

end
