namespace :db do
  task :populate => :environment do
    require 'populator'
    require 'ffaker'

    Client.populate 50 do |client|
      client.first_name = FFaker::Name.first_name
      client.last_name = FFaker::Name.last_name
      client.email = FFaker::Internet.email
      client.last_visit = 1.year.ago..Time.now
      client.class_type = ['Zumba', 'Spin', 'Crossfit']

  end
end
end
