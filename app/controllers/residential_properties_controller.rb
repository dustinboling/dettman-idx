class ResidentialPropertiesController < ApplicationController

  def index
    @search = ResidentialProperty.search(params[:q])
    
    @search.build_condition
    @residential_properties = @search.result
    
    respond_to do |format|
		format.html
		format.json { render :json => @residential_properties }
	end
  end
  
end
