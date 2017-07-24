class AddInfoToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :location, :string,
    add_column :users, :first_name, :string,
    add_column :users, :last_name, :string,
    add_column :users, :profession, :string,
    add_column :users, :date_of_birth, :string,
    add_column :users, :is_female, :boolean, default: false
  end
end
