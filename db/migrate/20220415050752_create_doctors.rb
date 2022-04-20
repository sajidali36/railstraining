class CreateDoctors < ActiveRecord::Migration[6.0]
  def change
    create_table :doctors do |t|
      t.string :name
      t.string :fname
      t.string :email
      t.string :phone

      t.timestamps
    end
  end
end
