json.extract! location, :id, :header_image, :header_text, :title, :description, :gallery, :map, :address, :phones, :info_email, :support_email, :order_email, :prises, :created_at, :updated_at
json.url location_url(location, format: :json)