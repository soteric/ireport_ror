json.array!(@sfmodules) do |sfmodule|
  json.extract! sfmodule, :id, :name
  json.url sfmodule_url(sfmodule, format: :json)
end
