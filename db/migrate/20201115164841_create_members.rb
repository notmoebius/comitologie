class CreateMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :members do |t|
      t.string :mail
      t.string :f_name
      t.string :l_name

      t.timestamps
    end
  end
end
