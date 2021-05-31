class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      # id field is built in, options to avoid creating the id
      t.string :first_name
      t.string :last_name
      t.string :emails

      t.timestamps
    end
  end
end
