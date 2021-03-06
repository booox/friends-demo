class CreateFriendRequests < ActiveRecord::Migration
  def change
    create_table :friend_requests do |t|
      t.references :user, index: true, foreign_key: true
      t.references :friend, index: true
      t.string :status, default: "Pending"

      t.timestamps null: false
    end
  end
end
