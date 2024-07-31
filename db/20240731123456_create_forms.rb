class CreateForms < ActiveRecord::Migration[6.0]
  def change
    create_table :forms do |t|
      t.string :name, null: false
      t.text :structure, null: false

      t.timestamps
    end

    # Uncomment the line below if you need an index on the name column
    # add_index :forms, :name, unique: true
  end
end
