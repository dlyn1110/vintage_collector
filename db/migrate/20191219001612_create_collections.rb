class CreateCollections < ActiveRecord::Migration[6.0]
  def change
    create_table :collections do |t|
      t.string :item_name
      t.string :description

      t.timestamps
    end
  end
end
