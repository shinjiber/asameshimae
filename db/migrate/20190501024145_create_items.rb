# frozen_string_literal: true

class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name, null: false
      t.string :image, null: false
      t.integer :price, null: false
      t.text :description

      t.timestamps
    end
  end
end
