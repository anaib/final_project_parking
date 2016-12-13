class PrivateParking < ApplicationRecord
  # Direct associations

  belongs_to :accept_user,
             :class_name => "User"

  belongs_to :offer_user,
             :class_name => "User"

  # Indirect associations

  # Validations

end
