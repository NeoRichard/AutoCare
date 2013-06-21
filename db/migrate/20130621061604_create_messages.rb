class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.integer :from
      t.integer :to
      t.text :content
      t.boolean :opened

      t.timestamps
    end
  end
end
