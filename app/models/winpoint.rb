class Winpoint < ApplicationRecord
  belongs_to :comic
  belongs_to :user
  has_many :matches

  accepts_nested_attributes_for :matches
end
