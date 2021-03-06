class Admin::ClubsController < ApplicationController
  before_action :authenticate_user!

  def index
    @clubs = Club.all.page((params[:page] || 1).to_i).per(20)
  end

  def new
    @club = Club.new
  end

  def create
    @club = Club.new(club_params)
    if @club.save
      redirect_to admin_clubs_url
    else
      render action: "new"
    end
  end

  def edit
    @club = Club.find(params[:id])
    render :new
  end

  def update
    club = Club.find(params[:id])
    club.update!(club_params)
    redirect_to admin_clubs_url
  end

  private

  def club_params
    params.require(:club).permit(:name, :address, :county_id, :logo, :latitude, :longitude)
  end
end
