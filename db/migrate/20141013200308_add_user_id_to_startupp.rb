class AddUserIdToStartupp < ActiveRecord::Migration
  def change
    add_column :startupps, :user_id, :integer
  end
end
