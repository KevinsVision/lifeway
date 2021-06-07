class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.integer :msg_id
      t.text :message
      t.integer :word_count

      # t.timestamps
    end
  end
end
