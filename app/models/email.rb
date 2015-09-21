class Email < ActiveRecord::Base
  belongs_to :gym
  has_many :clients_emails
  has_many :clients, through: :clients_emails
end
