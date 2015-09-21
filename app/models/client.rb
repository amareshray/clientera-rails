class Client < ActiveRecord::Base
  belongs_to :gym
  has_many :clients_emails
  has_many :emails, through: :clients_emails
end
