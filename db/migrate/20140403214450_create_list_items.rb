class CreateListItems < ActiveRecord::Migration
  def change
    create_table :list_items do |t|
      t.text :podcast_name
      t.references :list
      t.references :podcast
      t.timestamps
    end
  end
end
