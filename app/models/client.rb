class Client < ActiveRecord::Base
  belongs_to :gym
  has_many :segments
  has_many :emails, through: :segments
end
