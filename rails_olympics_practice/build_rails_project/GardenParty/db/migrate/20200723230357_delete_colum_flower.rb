class DeleteColumFlower < ActiveRecord::Migration[5.2]
  def change
    remove_column :flowers, :user_id
  end
end
