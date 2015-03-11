class CreateDloads < ActiveRecord::Migration
  def change
    create_table :dloads do |t|

      t.timestamps null: false
    end
  end
end
