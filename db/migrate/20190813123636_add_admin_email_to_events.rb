class AddAdminEmailToEvents < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :admin_email, :string
  end
end
