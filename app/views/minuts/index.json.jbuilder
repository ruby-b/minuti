json.array!(@minuts) do |minut|
  json.extract! minut, :id, :user_id, :minuti_id, :minuti_details_id, :category, :body, :del
  json.url minut_url(minut, format: :json)
end
