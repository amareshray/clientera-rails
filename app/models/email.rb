class Email < ActiveRecord::Base
  belongs_to :gym
  has_one :segment
  has_many :clients, through: :segments
end
