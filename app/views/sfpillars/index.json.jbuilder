json.array!(@sfpillars) do |sfpillar|
  json.extract! sfpillar, :id, :name
  json.url sfpillar_url(sfpillar, format: :json)
end
