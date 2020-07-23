class AddColoumInGarden < ActiveRecord::Migration[5.2]
  def change
    add_column :gardens, :size, :integer, null:false
    add_column :gardens, :name, :string,  null:false
    add_column :gardens, :garden_owner_id, :integer, null:false
    
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end
