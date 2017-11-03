class AddMemberToPost < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :member_id, :integer
  end
end
