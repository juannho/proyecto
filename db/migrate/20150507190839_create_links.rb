class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.references :directory, index: true
      t.string :tipo
      t.string :url

      t.timestamps null: false
    end
    add_foreign_key :links, :directories
  end
end
