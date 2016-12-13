class User < ApplicationRecord
  # Direct associations

  has_many   :private_parkings_offer,
             :class_name => "PrivateParking",
             :foreign_key => "offer_user_id",
             :dependent => :destroy

  # Indirect associations

  # Validations

  validates :phone, :uniqueness => true

  validates :phone, :presence => true

  validates :phone, :length => { :minimum => 10, :maximum => 14 }

end
