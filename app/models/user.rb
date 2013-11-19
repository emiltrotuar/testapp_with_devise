class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  validates :name, presence: { message: 'Name cannot be blank' }
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	has_many :posts, dependent: :destroy
	has_and_belongs_to_many :followed_users
	has_and_belongs_to_many :following_users
end
