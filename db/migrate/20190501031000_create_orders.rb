# frozen_string_literal: true

class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.references :user, foreign_key: true
      t.references :item, foreign_key: true

      t.timestamps
      t.index %i[user_id item_id], unique: true
    end
  end
end
