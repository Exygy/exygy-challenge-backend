json.extract! document, :id, :name, :title, :modified_by, :last_modified, :status, :country, :stared, :created_at, :updated_at
json.url document_url(document, format: :json)