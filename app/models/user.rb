class User < ActiveRecord::Base
	has_secure_password

  # Validations
  validates_presence_of :password, on: :create
  validates_presence_of :email
  validates_presence_of :name
  validates_presence_of :firstname
	validates_uniqueness_of :email
  validates :email, email: true

  # Relationships
  belongs_to :company

  before_save :check_role

  def check_role
    if self.company.users.where(role: "admin").count == 0
      self.role = "admin"
    end
  end

  def admin?
    self.role == "admin" ? true : false
  end

  def fullname
  	"#{firstname} #{name}"
  end
end