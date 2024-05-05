# frozen_string_literal: true

class CreateUserManualEntries < ActiveRecord::Migration[6.1]
  def change
    create_table :user_manual_entries do |t|
      t.bigint :user_manual_heading_id, null: false, index: true
      t.text :content, null: false

      t.timestamps
    end
  end
end
