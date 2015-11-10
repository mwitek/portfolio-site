class CreateInquiries < ActiveRecord::Migration
  def change
    create_table :inquiries do |t|
      t.string :email
      t.text :body
      t.timestamps null: false
    end
  end
end
