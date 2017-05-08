class AddRequirementsToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :requirement, :text
  end
end
