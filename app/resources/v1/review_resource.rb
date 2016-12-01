module V1
  class ReviewResource < JSONAPI::Resource
    attributes :user_id, :book_id, :rating, :subject, :body
    filters :book_id, :user_id
  end
end
