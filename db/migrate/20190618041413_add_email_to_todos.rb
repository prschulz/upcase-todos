class AddEmailToTodos < ActiveRecord::Migration[5.1]
  def change
    add_column :todos, :email, :string
  end
end
