class CreateBouts < ActiveRecord::Migration
  def change
    create_table :bouts do |t|
      
      t.timestamps null: false
    end
  end
end
