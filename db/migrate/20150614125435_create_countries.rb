class CreateCountries < ActiveRecord::Migration
  def change
    create_table :countries do |t|
      t.string :name
    end

    add_index :countries, :name, unique: true
  end
end
