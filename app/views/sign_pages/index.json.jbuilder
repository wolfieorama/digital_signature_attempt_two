json.array!(@sign_pages) do |sign_page|
  json.extract! sign_page, :id, :name
  json.url sign_page_url(sign_page, format: :json)
end
