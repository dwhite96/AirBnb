json.array!(@listings) do |listing|
  json.extract! listing, :id, :user_id, :title, :description, :neighborhood, :address, :city, :state, :country, :price
  json.url listing_url(listing, format: :json)
end
