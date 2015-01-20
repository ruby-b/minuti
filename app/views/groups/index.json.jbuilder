json.array!(@groups) do |group|
  json.extract! group, :id, :users_id, :groups_id, :groups_name
  json.url group_url(group, format: :json)
end
