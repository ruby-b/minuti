json.array!(@minuti_details) do |minuti_detail|
  json.extract! minuti_detail, :id, :minutis_id, :minuti_details_d, :category, :body, :del
  json.url minuti_detail_url(minuti_detail, format: :json)
end
