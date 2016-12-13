class User < ApplicationRecord
  # Direct associations

  # Indirect associations

  # Validations

  validates :phone, :length => { :minimum => 10, :maximum => 14 }

end
