json.extract! ad, :id, :title, :price, :description, :city, :postal, :province, :phone, :user_id, :created_at, :updated_at
json.url ad_url(ad, format: :json)
