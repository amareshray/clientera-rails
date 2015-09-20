class Email < ActiveRecord::Base
  belongs_to :gym
  has_many :segments
  has_many :clients, through: :segments
end
