class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :nickname
      t.text :comment
      t.references :user
      t.references :podcast
      t.timestamps
    end
  end
end
