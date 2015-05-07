class CreateViews < ActiveRecord::Migration
  def change
    create_table :views do |t|
      t.references :directory, index: true
      t.date :fecha
      t.time :hora

      t.timestamps null: false
    end
    add_foreign_key :views, :directories
  end
end
