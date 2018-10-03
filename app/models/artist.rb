class Artist < ApplicationRecord
  has_many :sketchbooks

  validates :name, uniqueness: true, length: {in: 3..20},
  :format => { :with => /\A[a-zA-Z]+\z/,
  :message =>"Only letters allowed"}
end
