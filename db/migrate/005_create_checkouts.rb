class CreateCheckouts < ActiveRecord::Migration
def change
    create_table :checkouts do |t|
      t.integer :book_id
      t.integer :user_id
      t.boolean :returned, :default => 0
      t.string :due_date
    end
end

end
