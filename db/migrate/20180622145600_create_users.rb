class CreateUsers < ActiveRecord::Migration[5.0]
	def change
		create_table :users do |t|
			t.string :first_name
			t.string :last_name
			t.string :email
			t.date :birthday
			t.timestamps
		end

		add_column :users, :phone_number, :string
	end
end