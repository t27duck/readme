# frozen_string_literal: true

class CreateLinks < ActiveRecord::Migration[6.1]
  def change
    create_table :links do |t|
      t.string :link_type, null: false
      t.string :url, null: false

      t.timestamps
    end
  end
end
