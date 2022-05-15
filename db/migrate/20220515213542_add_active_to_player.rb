class AddActiveToPlayer < ActiveRecord::Migration[7.0]
  def change
    add_column :players, :active, :boolean
  end
end
