class RetsImportsController < ApplicationController
  before_action :set_rets_import, only: [:show, :edit, :update, :destroy]
  before_action :set_rets_client, only: [:residential]

  def index
    @rets_imports = RetsImport.all
  end

  def residential(offset=0,limit=250)
    
    @rets_query = "(ListingRid=1+),(LastModifiedDateTime=2000-01-01T00:00:00+)"

    @response = @client.find(
      :all,
      :search_type => "Property",
      :class => "RESI",
      :count => 1,
      :offset => offset,
      :limit => limit,
      #:select => "ListingRid,LastModifiedDateTime,PictureModifiedDateTime,PictureCount",
      :query => @rets_query
    )

    if @response.length > 0
      @response.each do |property|
        record = property.each_with_object({}) {|(key, value), obj| obj[association_to_board_association(key.underscore)] = value}
        @residential_property = ResidentialProperty.create!(record)
      end
      self.residential(offset+limit, limit)
    end

    @rets_import = RetsImport.create!(
      :query => @rets_query,
      :property_count => @response.length,
      :successful_import => true
    )

    redirect_to residential_properties_url

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rets_import
      @rets_import = RetsImport.find(params[:id])
    end

    def set_rets_client
      @client = Rets::Client.new(
        :login_url => ENV['RETS_LOGIN_URL'],
        :agent => ENV['RETS_AGENT'],
        :username => ENV['RETS_USERNAME'],
        :password => ENV['RETS_PASSWORD']
      )
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rets_import_params
      params.require(:rets_import).permit(:error_message,:property_count,:query,:successful_import)
    end

    def association_to_board_association(key)
      if key == "association" then "board_association" else key end
    end
end
