namespace :rets do
  namespace :import do
    namespace :residential do

      desc "Imports all residential listings from the RETS server"
      task :all => :environment do
        
        puts "Importing all residential listings ..."
        
        set_rets_client()
        import_all_residential()

      end

      desc "Imports only the residential listings that have been modified since the last import"
      task :modified => :environment do
        puts "Importing all modified residential listings since the last import ..."
      end

      def set_rets_client

        puts "Login URL: #{ENV['RETS_LOGIN_URL']}"
        puts "Agent: #{ENV['RETS_AGENT']}"
        puts "Username: #{ENV['RETS_USERNAME']}"
        puts "Password: #{ENV['RETS_PASSWORD']}"

        @client = Rets::Client.new(
          :login_url => ENV['RETS_LOGIN_URL'],
          :agent => ENV['RETS_AGENT'],
          :username => ENV['RETS_USERNAME'],
          :password => ENV['RETS_PASSWORD']
        )
      end

      def import_all_residential(offset=0,limit=250)
        
        puts "Offset: #{offset}, Limit: #{limit}"

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

        puts "Importing #{limit} of #{@response.length} residential listings ..."

        if @response.length > 0
          @response.each do |property|
            record = property.each_with_object({}) {|(key, value), obj| obj[association_to_board_association(key.underscore)] = value}
            @residential_property = ResidentialProperty.create!(record)
          end
          import_all_residential(offset+limit, limit)
        end
      end

      def association_to_board_association(key)
        if key == "association" then "board_association" else key end
      end

    end
  end
end