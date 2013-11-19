class CreateThemes < ActiveRecord::Migration
  def change
    create_table :themes do |t|
      t.string :theme
      t.references :user

      t.timestamps
    end
  end
end
