class AddMaxListingPriceAndMinListingPriceToResidentialSearch < ActiveRecord::Migration
  def change
    add_column :residential_searches, :max_listing_price, :decimal, precision: 12, scale: 2
    add_column :residential_searches, :min_listing_price, :decimal, precision: 12, scale: 2
  end
end
