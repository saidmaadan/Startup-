class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :name
      t.integer :ratings
      t.text :comment
      t.references :startupp, index: true

      t.timestamps
    end
  end
end
