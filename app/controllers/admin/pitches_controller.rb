class Admin::PitchesController < ApplicationController
  #before_action :authenticate_user!

  def index
    @pitches = Pitch.all.page((params[:page] || 1).to_i).per(20)
  end

  def new
    @pitch = Pitch.new
  end

  def create
    @pitch = Pitch.new(pitch_params)
    if @pitch.save
      redirect_to admin_pitches_url
    else
      render action: "new"
    end
  end

  private

  def pitch_params
    params.require(:pitch).permit(:name, :county_id)
  end
end
