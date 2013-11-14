class AddIsActiveToSpreeUsers < ActiveRecord::Migration
  def up
    add_column :spree_users, :is_active, :boolean, default: true
  end

  def down
    remove_column :spree_users, :is_active
  end
end
