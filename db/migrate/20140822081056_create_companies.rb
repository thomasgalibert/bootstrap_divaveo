class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :number
      t.text :street
      t.string :zipcode
      t.string :town
      t.string :country
      t.string :email
      t.string :tel
      t.string :fax
      t.string :iban
      t.string :bic

      t.timestamps
    end
  end
end
