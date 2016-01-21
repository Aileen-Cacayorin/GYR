class Parent < ActiveRecord::Base
  has_many :students
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


 def possible_students
    email = self.email
    return Student.where(parent_email: email, parent_id: nil)
 end
end
