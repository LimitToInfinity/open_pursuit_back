class CreateHeroAttributes < ActiveRecord::Migration[5.2]
  def change
    create_table :hero_attributes do |t|
      t.references :hero, foreign_key: true
      t.references :power, foreign_key: true

      t.timestamps
    end
  end
end
