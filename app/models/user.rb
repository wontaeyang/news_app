class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :name, :role
  # attr_accessible :title, :body


  before_save {|user| user.name = name.downcase }
  before_save {|user| user.email = email.downcase }

  validates :name, presence: true, uniqueness: true, length: {minimum: 4}

  has_many :links

end
