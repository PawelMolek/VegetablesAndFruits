class AddActiveToSnack < ActiveRecord::Migration[7.0]
  def change
    add_column :snacks, :active, :boolean
  end
end
