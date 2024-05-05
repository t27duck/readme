# frozen_string_literal: true

class CreateUserManualHeadings < ActiveRecord::Migration[6.1]
  def change
    create_table :user_manual_headings do |t|
      t.text :content, null: false

      t.timestamps
    end
  end
end
