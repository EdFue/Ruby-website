json.extract! book, :id, :title, :isbn, :person_id, :person.name, :created_at, :updated_at
json.url book_url(book, format: :json)
