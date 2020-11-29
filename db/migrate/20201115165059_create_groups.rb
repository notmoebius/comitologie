class CreateGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :groups do |t|
      t.string :name
      t.text :target_description
      t.string :branch
      t.string :pilote
      t.boolean :mission
      t.string :frequency
      t.date :date_begin

      t.timestamps
    end
  end
end
