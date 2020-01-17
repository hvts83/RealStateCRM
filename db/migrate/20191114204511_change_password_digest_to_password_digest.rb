class ChangePasswordDigestToPasswordDigest < ActiveRecord::Migration[6.0]
  def change
    change_column :employees, :password_digest, :string
  end
end
