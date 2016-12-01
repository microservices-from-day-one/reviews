class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    enable_extension 'uuid-ossp'

    create_table :reviews, id: :uuid do |t|
      t.uuid :book_id
      t.uuid :user_id
      t.integer :rating
      t.string :subject
      t.string :body

      t.timestamps
    end
  end
end
