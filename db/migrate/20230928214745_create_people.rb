class CreatePeople < ActiveRecord::Migration[7.0]
  def change
    create_table :people do |t|
      t.string :name
      t.string :email
      t.string :address
      t.string :phone
      t.string :library_card

      t.timestamps
    end
  end
end
