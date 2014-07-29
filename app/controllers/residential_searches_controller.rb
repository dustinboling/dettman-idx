class ResidentialSearchesController < ApplicationController
  def new
    @residential_search = ResidentialSearch.new
  end

  def create
    @residential_search = ResidentialSearch.create!(residential_search_params)
    redirect_to @residential_search
  end

  def show
    @residential_search = ResidentialSearch.find(params[:id])
  end

  private

  def residential_search_params
    params.permit(:subdivision, :max_listing_price, :min_listing_price)
  end
end
