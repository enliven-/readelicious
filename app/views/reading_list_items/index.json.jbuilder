json.array!(@reading_list_items) do |reading_list_item|
  json.extract! reading_list_item, :id, :book_id, :reading_list_id, :status
  json.url reading_list_item_url(reading_list_item, format: :json)
end
