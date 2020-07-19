class ChangeColoumName < ActiveRecord::Migration[6.0]
  def change
    rename_column :users, :session, :session_token
    #Ex:- rename_column("admin_users", "pasword","hashed_pasword")

  end
end



