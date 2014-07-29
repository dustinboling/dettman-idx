class CreateResidentialSearches < ActiveRecord::Migration
  def change
    create_table :residential_searches do |t|
      t.string :accumail_result
      t.decimal :acres, precision: 12, scale: 4
      t.integer :age
      t.text :agent_only_remarks
      t.string :agreement_type
      t.string :agreement_type2
      t.string :apn
      t.boolean :approved
      t.string :area
      t.datetime :available_date
      t.datetime :backon_market_date
      t.decimal :bathrooms, precision: 5, scale: 2
      t.decimal :bedrooms, precision: 5, scale: 2
      t.string :board_association
      t.string :board_loaded
      t.integer :broker_tours
      t.integer :caravans
      t.integer :cdom
      t.string :city
      t.string :comm_comments
      t.string :commission1
      t.string :commission2
      t.string :commission3
      t.datetime :contingent_date
      t.datetime :contingent_expiration_date
      t.string :county
      t.string :cross_street_address
      t.string :directions
      t.integer :dom
      t.string :entered_by_mlsid
      t.datetime :entry_date
      t.string :financing_comments
      t.integer :fips_code
      t.integer :full_bathrooms
      t.integer :garage_spaces
      t.string :geo_code_overridden
      t.string :geo_code_result
      t.integer :half_bathrooms
      t.integer :hit_counter
      t.datetime :inactive_date
      t.datetime :last_modified_date_time
      t.integer :last_unit_number_used
      t.decimal :latitude, precision: 9, scale: 6
      t.string :listing_agent_first_name
      t.string :listing_agent_full_name
      t.string :listing_agent_last_name
      t.string :listing_agent_mlsid
      t.integer :listing_agent_number
      t.string :listing_co_agent_full_name
      t.string :listing_co_agent_mlsid
      t.integer :listing_co_agent_number
      t.string :listing_co_office_mlsid
      t.string :listing_co_office_name
      t.integer :listing_co_office_number
      t.datetime :listing_date
      t.string :listing_number_display
      t.string :listing_office_mlsid
      t.string :listing_office_name
      t.integer :listing_office_number
      t.decimal :listing_price, precision: 12, scale: 2
      t.integer :listing_rid
      t.text :listing_url
      t.decimal :longitude, precision: 11, scale: 6
      t.string :lot_measurement
      t.string :lot_size_source
      t.integer :lot_square_footage
      t.string :map_book
      t.string :map_page
      t.string :map_x_coordinate
      t.string :map_y_coordinate
      t.text :marketing_remarks
      t.integer :ml_number
      t.string :mls
      t.string :mls_origin
      t.string :non_member_sales_agent_name
      t.string :non_member_sales_office_name
      t.string :on_market
      t.integer :open_houses
      t.decimal :original_price, precision: 12, scale: 2
      t.string :owner_name
      t.string :owner_phone_area, limit: 3
      t.string :owner_phone_number, limit: 7
      t.datetime :pending_date
      t.string :phone_to_show_area, limit: 3
      t.string :phone_to_show_number, limit: 7
      t.integer :picture_count
      t.datetime :picture_modified_date_time
      t.datetime :price_change_date
      t.decimal :price_per_acre, precision: 12, scale: 2
      t.decimal :price_per_square_foot, precision: 12, scale: 2
      t.text :property_disclaimer
      t.string :property_subtype1
      t.string :property_subtype2
      t.string :property_subtype3
      t.string :property_type
      t.integer :public_hit_counter
      t.text :public_listing_url
      t.boolean :publish_to_internet
      t.integer :quarter_bathrooms
      t.string :reciprocal_listing
      t.string :reciprocal_member_area_code, limit: 3
      t.string :reciprocal_member_name
      t.string :reciprocal_member_phone
      t.string :reciprocal_office_name
      t.string :region
      t.string :resiadnu
      t.text :resiadvt
      t.text :resiafee
      t.text :resiamen
      t.text :resiappl
      t.integer :resiarey
      t.string :resiastx
      t.text :resibatf
      t.text :resibedd
      t.string :resibldg
      t.string :resibtno
      t.text :resibuil
      t.string :resicaot
      t.string :resicasn
      t.string :resicasp
      t.string :resicbln
      t.string :resicbmc
      t.string :resicbmn
      t.string :resicbtc
      t.string :resicbtn
      t.integer :resiccap
      t.string :resiccra
      t.date :resicead
      t.integer :resicefn
      t.integer :resicfib
      t.string :resicfiv
      t.string :resicfou
      t.string :resicgtc
      t.string :resiclea
      t.decimal :resiclla, precision: 11, scale: 0
      t.text :resiclst
      t.string :resicmco
      t.string :resicmct
      t.string :resicmet
      t.string :resicmpe
      t.string :resicmpo
      t.string :resicmpt
      t.text :resicomw
      t.decimal :resicona, precision: 10, scale: 0
      t.string :resiconc
      t.string :resicone
      t.text :resicook
      t.text :resicool
      t.text :resicoos
      t.string :resicopd
      t.string :resicopn
      t.string :resicote
      t.text :resicoun
      t.text :resicour
      t.integer :resicpos
      t.integer :resicrmc
      t.string :resicrvd
      t.string :resicsha
      t.string :resicsix
      t.string :resictal
      t.string :resictaw
      t.integer :resictcs
      t.string :resictfi
      t.string :resictfo
      t.string :resicthr
      t.string :resicton
      t.string :resictsi
      t.integer :resicttf
      t.string :resictth
      t.string :resicttw
      t.string :resictwo
      t.string :resictyo
      t.string :resicutl
      t.string :resicwdn
      t.string :resicybs
      t.text :residisa
      t.text :residisc
      t.text :residoor
      t.string :residwel
      t.text :resieatt
      t.text :resieffi
      t.string :resielem
      t.text :resieloc
      t.string :resiesct
      t.text :resiexcc
      t.text :resiextc
      t.text :resiface
      t.text :resifeat
      t.text :resifenc
      t.text :resifinn
      t.string :resifipe
      t.text :resiflor
      t.text :resifoun
      t.text :resifpfl
      t.text :resifpft
      t.text :resifplc
      t.text :resigene
      t.decimal :resigrif, precision: 10, scale: 0
      t.text :resigrnw
      t.string :resigrny
      t.text :resihigh
      t.string :resihigs
      t.string :resihoaa
      t.text :resihoao
      t.text :resihoat
      t.decimal :resihoax, precision: 8, scale: 0
      t.decimal :resihoay, precision: 8, scale: 0
      t.integer :resihtai
      t.text :resihtfl
      t.text :resihttp
      t.text :resiindo
      t.text :resiinft
      t.string :resijrhs
      t.text :resikitc
      t.text :resilaun
      t.text :resilbty
      t.text :resilbxl
      t.text :resildes
      t.string :resilkey
      t.integer :resilley
      t.string :resillpu
      t.text :resiloco
      t.string :resilotd
      t.string :resilstk
      t.text :resiltll
      t.text :resiltyp
      t.string :resilvls
      t.decimal :resimlbh, precision: 11, scale: 0
      t.text :resineer
      t.string :resiocnn
      t.string :resiocpp
      t.text :resioctt
      t.text :resiofee
      t.text :resiopty
      t.text :resiostr
      t.text :resipacc
      t.text :resipcon
      t.text :resipdes
      t.text :resipkft
      t.text :resipkty
      t.string :resipoll
      t.text :resiposs
      t.integer :resiprkg
      t.text :resiptft
      t.text :resiptyc
      t.text :resiroof
      t.text :resiroom
      t.string :resirpry
      t.text :resirule
      t.text :resisafe
      t.string :resiscll
      t.text :resisewe
      t.integer :resishco
      t.text :resishwa
      t.string :resisign
      t.decimal :resisocm, precision: 10, scale: 0
      t.string :resisocr
      t.string :resisoct
      t.string :resisovc
      t.string :resispaa
      t.text :resispac
      t.text :resispad
      t.text :resispec
      t.text :resispri
      t.string :resistmo
      t.text :resistry
      t.string :resistta
      t.string :resitaiz
      t.text :resitaxm
      t.text :resiterm
      t.text :resitvse
      t.integer :resiutcm
      t.text :resiview
      t.text :resivolt
      t.string :resivwyn
      t.decimal :resiwalk, precision: 10, scale: 0
      t.text :resiwate
      t.text :resiwhtr
      t.text :resiwind
      t.string :resizone
      t.datetime :search_contractual_date
      t.decimal :search_price, precision: 12, scale: 2
      t.string :selling_agent_full_name
      t.string :selling_agent_mlsid
      t.integer :selling_agent_number
      t.string :selling_co_agent_full_name
      t.string :selling_co_agent_mlsid
      t.integer :selling_co_agent_number
      t.string :selling_comments
      t.string :selling_co_office_mlsid
      t.string :selling_co_office_name
      t.integer :selling_co_office_number
      t.datetime :selling_date
      t.string :selling_office_mlsid
      t.string :selling_office_name
      t.integer :selling_office_number
      t.decimal :selling_price, precision: 12, scale: 2
      t.boolean :show_address_to_client
      t.boolean :show_address_to_public
      t.string :showing_instructions
      t.integer :square_footage
      t.string :square_footage_source
      t.string :state, limit: 2
      t.string :status
      t.string :status_comments
      t.datetime :status_date
      t.decimal :stories, precision: 4, scale: 2
      t.integer :street_address_code
      t.string :street_direction
      t.string :street_name
      t.integer :street_number
      t.string :street_number_modifier
      t.string :street_post_direction
      t.string :street_suffix
      t.string :subdivision
      t.string :sub_lease
      t.datetime :sub_lease_expiration
      t.string :tax_autofill
      t.integer :tax_info
      t.integer :three_quarter_bathrooms
      t.string :transaction_type
      t.string :unit
      t.boolean :validated
      t.decimal :value_range_price, precision: 12, scale: 2
      t.boolean :variable_rate_commission
      t.integer :virtual_media_count
      t.datetime :virtual_media_last_modified_date_time
      t.string :virtual_tour_url
      t.boolean :vow_address_display
      t.boolean :vow_automated_valuation_display
      t.boolean :vow_consumer_comment
      t.boolean :vow_entire_listing_display
      t.integer :year_built
      t.integer :year_built_exception
      t.string :zero_selling_price
      t.string :zip_code, limit: 5
      t.string :zip_plus4, limit: 4

      t.timestamps
    end
  end
end
