class ChangeColumnType < ActiveRecord::Migration[6.1]
  def change
    change_column(:documents, :user_id, :integer)

  end
end
