json.extract! book, :id, :title, :world, :description, :quote, :created_at, :updated_at
json.url book_url(book, format: :json)
