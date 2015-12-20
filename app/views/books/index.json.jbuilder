json.array!(@books) do |book|
  json.extract! book, :id, :title, :image
  json.url book_url(book, format: :json)
end
