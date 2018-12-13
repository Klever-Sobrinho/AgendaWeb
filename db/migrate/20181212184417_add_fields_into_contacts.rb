class AddFieldsIntoContacts < ActiveRecord::Migration[5.2]
  def change
    add_column :contacts, :birthdate, :date
    add_column :contacts, :address, :string
  end
end
