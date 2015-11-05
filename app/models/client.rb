class Client < ActiveRecord::Base
  belongs_to :gym
  has_many :clients_emails
  has_many :emails, through: :clients_emails

  def self.search(search)
    if search
      where("last_visit <= ?", search)
    else
      all
    end
  end
end
