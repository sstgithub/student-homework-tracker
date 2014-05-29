class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

	ROLES = %w[admin normal]	

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

  has_many :comments
  has_many :assignments
  has_many :homeworks
  has_many :cohorts, through: :enrollment

end
