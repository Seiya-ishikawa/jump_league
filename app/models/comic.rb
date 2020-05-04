class Comic < ApplicationRecord
  after_initialize :set_default_values
  # Use this if you wanna set default values only when creating a new record.
  #after_initialize :set_default_values, if: :new_record?

  private

  def set_default_values
    self.match        ||= 0
  end
  has_many :comments
  has_many :winpoints
end
