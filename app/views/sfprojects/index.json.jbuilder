json.array!(@sfprojects) do |sfproject|
  json.extract! sfproject, :id, :name, :release_id, :scope_id, :module_id
  json.url sfproject_url(sfproject, format: :json)
end
