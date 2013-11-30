class CreateOffices < ActiveRecord::Migration
  def change
    create_table :offices do |t|
      t.string :street
      t.integer :number
      t.string :city
      t.string :postal_code
      t.references :partner, index: true

      t.timestamps
    end
  end
end
