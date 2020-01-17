class Products < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :location
      t.string :type 
      t.string :status
      t.string :price
      t.string :neighboorhood
      t.integer :client_id

      t.timestamps
    end
  end
end
