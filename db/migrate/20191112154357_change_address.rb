class ChangeAddress < ActiveRecord::Migration[6.0]
  def change
    rename_column :clients, :address, :email
  end
end
