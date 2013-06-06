class CreateReplies < ActiveRecord::Migration
  def change
    create_table :replies do |t|
      t.text :message
      t.integer :ticket_id

      t.timestamps
    end
  end
end
