class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  # validates :name, presence: { message: 'Name cannot be blank' }
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	has_many :posts, dependent: :destroy
	has_and_belongs_to_many :followed_users,class_name: 'User', join_table: "followed_users_users", foreign_key: :user_id, association_foreign_key: :followed_user_id
	has_and_belongs_to_many :following_users,class_name: 'User', join_table: "following_users_users", foreign_key: :user_id, association_foreign_key: :following_user_id
end
