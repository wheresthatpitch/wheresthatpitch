class CountiesController < ApplicationController
  def show
    @county = County.find_by(slug: params[:county])
  end
end
