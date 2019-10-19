class AddEnumsToPlayer < ActiveRecord::Migration[5.2]
  def change
    add_column :players, :status, :integer
    add_column :players, :position, :integer
  end
end
