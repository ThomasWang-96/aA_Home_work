class GardenerIdInFlower < ActiveRecord::Migration[5.2]
  def change
      add_column :flowers, :gardener_id, :integer, null:false
      #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end
