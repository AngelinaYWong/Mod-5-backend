class CreateImages < ActiveRecord::Migration[5.2]
  def change
    create_table :images do |t|
      t.string :name
      t.string :creator
      t.string :src

      t.timestamps
    end
  end
end
