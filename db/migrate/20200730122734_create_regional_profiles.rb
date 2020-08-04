class CreateRegionalProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :regional_profiles do |t|
      t.string :name
      t.text :population
      t.text :county
      t.text :local_govt
      t.text :description
      t.integer :environment_id
      t.string :image_url
      t.date :updated

      t.timestamps
    end
  end
end
