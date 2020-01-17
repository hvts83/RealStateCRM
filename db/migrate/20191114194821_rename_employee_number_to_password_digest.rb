class RenameEmployeeNumberToPasswordDigest < ActiveRecord::Migration[6.0]
  def change
    rename_column :employees, :employee_number, :password_digest
  end
end
