class CreateEntries < ActiveRecord::Migration[6.1]
  def change
    create_table :entries do |t|
      t.text :content, null: false

      t.timestamps
    end
  end
end
