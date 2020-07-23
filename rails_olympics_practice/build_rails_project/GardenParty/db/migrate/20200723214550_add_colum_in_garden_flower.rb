class AddColumInGardenFlower < ActiveRecord::Migration[5.2]
  def change
    add_column :flowers, :garden_id, :integer
    add_column :gardens, :flower_id, :integer
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end
