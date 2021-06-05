class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.integer :id
      t.text :message
      t.integer :count

      t.timestamps
    end
  end
end