class User < ApplicationRecord
    has_many :document
    validates :firstname, presence:   {message:'Enter First Name'}
    validates :lastname, presence:   {message:'Enter Last Name'}
    validates :password, presence:   {message:'Enter Password'}
    validates :email, presence:   {message:'Enter E-mail'}
   # validates :phoneno, presence:   {message:'Enter Phone No.'}
    validates :aadhar, presence:   {message:'Enter Aadhar'},length: { is: 12}
   
    validates :phoneno, format: { with: /[0-9]\d*|0\d+/,message: "Invalid Phone No" }
    validates :aadhar, uniqueness: true

end
