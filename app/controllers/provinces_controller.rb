class ProvincesController < ApplicationController
  def index
    @provinces = Province.all
  end

  def show
    @province = Province.find_by(slug: params[:province])
  end
end
