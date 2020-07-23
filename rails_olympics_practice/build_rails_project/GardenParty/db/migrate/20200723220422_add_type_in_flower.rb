class AddTypeInFlower < ActiveRecord::Migration[5.2]
  def change
    add_column :flowers, :flower_type, :string, null:false
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end
