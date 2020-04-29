class Comic < ApplicationRecord
  has_many :comments
  has_many :winpoints
end
