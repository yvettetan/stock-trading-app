class RemoveRoleIdFromUser < ActiveRecord::Migration[6.0]
  def change
    remove_reference :users, :role, null: false, foreign_key: true
  end
end
