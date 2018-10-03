class Sketchbook < ApplicationRecord
  belongs_to :artist
  has_many :paints

  validates :brand, presence: true
  validates :paper_weight, format: { with: /\A\d+\z/,
  :message =>"Only numbers"}
  validates :paper_type, length: { minimum: 10 }
  validates :absorption, numericality: true
  validates :artist_id, presence: true
  validates :cover, presence: true


end
