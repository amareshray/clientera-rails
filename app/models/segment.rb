class Segment < ActiveRecord::Base
  belongs_to :client
  belongs_to :email
end
