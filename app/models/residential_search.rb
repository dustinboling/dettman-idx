class ResidentialSearch < ActiveRecord::Base
  def properties
    @properties ||= find_properties
  end

  private

  def find_properties
    properties = ResidentialProperty.order(:last_modified_date_time)
    properties = properties.where("subdivision like ?", "%#{subdivision}") if subdivision.present?
    properties = properties.where("listing_price >= ?", min_listing_price) if min_listing_price.present?
    properties = properties.where("listing_price <= ?", max_listing_price) if max_listing_price.present?
    properties
  end
end
