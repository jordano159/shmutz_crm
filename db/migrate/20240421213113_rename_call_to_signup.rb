class RenameCallToSignup < ActiveRecord::Migration[7.1]
  def change
    rename_table :calls, :sign_ups
  end
end
