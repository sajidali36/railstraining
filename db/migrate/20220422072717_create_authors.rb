class CreateAuthors < ActiveRecord::Migration[6.0]
  def change
    create_table :authors do |t|
      t.string :name
      t.string :email
      t.integer :phone

      t.timestamps
    end
  end
end
