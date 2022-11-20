class CreateColleges < ActiveRecord::Migration[7.0]
  def change
    create_table :colleges do |t|
      t.string :name
      t.text :description
      t.string :city
      t.string :contact_no
      t.string :contact_email

      t.timestamps
    end
  end
end
