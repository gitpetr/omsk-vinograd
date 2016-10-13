json.extract! article, :id, :title, :image, :description, :created_at, :updated_at
json.url article_url(article, format: :json)