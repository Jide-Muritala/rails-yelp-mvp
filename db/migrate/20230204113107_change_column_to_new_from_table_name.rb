class ChangeColumnToNewFromTableName < ActiveRecord::Migration[7.0]
  def change
    change_table :restaurants do |table|
      table.change :phone_number, :string
    end
  end
end
