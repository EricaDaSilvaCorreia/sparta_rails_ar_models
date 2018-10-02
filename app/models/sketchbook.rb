class Sketchbook < ApplicationRecord
  belongs_to :artist
  has_many :paints
end
