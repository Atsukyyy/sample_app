class AddRememberTokenToUsers < ActiveRecord::Migration
  def change
  	add_colum :users, :remember_token, :string
		add_index :users, :remember_token
	end
end
