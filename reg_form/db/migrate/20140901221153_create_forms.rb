class CreateForms < ActiveRecord::Migration
  def change
    create_table :forms do |t|
      t.string :firstname
      t.string :lastname
      t.string :gender
      t.string :address
      t.string :email
      t.string :country
      t.string :state
      t.string :goal

      t.timestamps
    end
  end
end
