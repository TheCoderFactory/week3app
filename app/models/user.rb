class User < ActiveRecord::Base
	has_one :profile
	has_many :status_updates
	has_many :memberships
	has_many :groups, through: :memberships
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  after_create :create_profile_for_user

  def create_profile_for_user
  	profile = Profile.new(user_id: self.id)
  	profile.save
  end
end
