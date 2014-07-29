class RemoveListingPriceFromResidentialSearch < ActiveRecord::Migration
  def change
    remove_column :residential_searches, :listing_price, :decimal
  end
end
