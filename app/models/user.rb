class User < ApplicationRecord
  # Direct associations

  has_many   :private_parkings_accept,
             :class_name => "PrivateParking",
             :foreign_key => "accept_user_id",
             :dependent => :destroy

  has_many   :private_parkings_offer,
             :class_name => "PrivateParking",
             :foreign_key => "offer_user_id",
             :dependent => :destroy

  # Indirect associations

  has_many   :offer_users,
             :through => :private_parkings_accept,
             :source => :offer_user

  has_many   :accept_users,
             :through => :private_parkings_offer,
             :source => :accept_user

  # Validations

  validates :phone, :uniqueness => true

  validates :phone, :presence => true

  validates :phone, :length => { :minimum => 10, :maximum => 14 }

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
