json.extract! firework_detail, :id, :stash, :quantity, :price, :firework_id, :created_at, :updated_at
json.url firework_detail_url(firework_detail, format: :json)
