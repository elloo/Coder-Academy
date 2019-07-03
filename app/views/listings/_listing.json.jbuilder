json.extract! listing, :id, :picture, :description, :colour, :size, :condition, :price, :location, :seller_id, :created_at, :updated_at
json.url listing_url(listing, format: :json)
