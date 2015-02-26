class CreateCountryResources < ActiveRecord::Migration
  def change
    create_table :country_resources do |t|
      t.integer :country_id
      t.integer :resource_id
      t.integer :quantity
      t.resource :references
      t.country :references

      t.timestamps null: false
    end
  end
end
