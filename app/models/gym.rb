class Gym < ActiveRecord::Base
  belongs_to :user
  has_many :clients
  has_many :emails
  has_many :clients_emails
end
