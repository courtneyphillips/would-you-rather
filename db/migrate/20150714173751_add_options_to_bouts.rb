class AddOptionsToBouts < ActiveRecord::Migration
  def change
    add_column :options, :bout_id, :integer
  end
end
