class RemovePermissionFromUsers < ActiveRecord::Migration[6.0]
  def change

    remove_column :users, :permission, :integer
  end
end
