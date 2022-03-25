class ClubsController < ApplicationController
  def show
    county = County.find_by(slug: params[:county])
    @club = county.clubs.find_by(slug: params[:club])
  end
end
