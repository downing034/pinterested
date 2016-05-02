class ChangeUserDescription < ActiveRecord::Migration
  def change
    rename_column :pins, :description, :pun_text
  end
end
