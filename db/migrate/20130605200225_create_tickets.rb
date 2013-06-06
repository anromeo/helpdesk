class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.string :email
      t.string :subject
      t.text :problem

      t.timestamps
    end
  end
end
