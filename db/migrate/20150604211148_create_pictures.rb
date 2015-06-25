class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.string :name
      t.belongs_to :gallery, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end