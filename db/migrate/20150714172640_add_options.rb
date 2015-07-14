class AddOptions < ActiveRecord::Migration
  def change
    create_table :options do |t|
      t.column :name, :string
      t.column :description, :string
      t.column :votes, :integer

      t.timestamps
    end
  end
end
