class Comic < ApplicationRecord
  # Use this if you wanna set default values only when creating a new record.
  #after_initialize :set_default_values, if: :new_record?

  private
  has_many :comments
  has_many :winpoints
  has_many :matches
  
end
