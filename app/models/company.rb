class Company < ActiveRecord::Base
	# Validations
  validates :email, :name, :street, :zipcode, :town, presence: true
  validates_uniqueness_of :email
  validates :email, email: true
  validates :cgv, presence: true

  # Relationships
	has_many :users

	accepts_nested_attributes_for :users

  def adress
    "#{street} - #{zipcode} #{town}"
  end
end
