class ResidentialPropertiesController < ApplicationController

  def index
    @search = ResidentialProperty.search(params[:q])
    @residential_properties = @search.result
    @search.build_condition
  end
  
end
