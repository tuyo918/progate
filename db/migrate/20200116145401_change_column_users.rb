class ChangeColumnUsers < ActiveRecord::Migration[5.0]
  def change
    rename_column :users, :passwprd, :password
  end
end
