class AddCgvToCompanies < ActiveRecord::Migration
  def change
    add_column :companies, :cgv, :boolean
  end
end
