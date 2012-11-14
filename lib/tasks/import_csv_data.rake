namespace :db do

  desc "load user data from csv"
  task :load_csv_data  => :environment do
    require 'csv'

    CSV.foreach("/Users/bhander/Dropbox/workspace/rails_projects/panel.csv") do |row|
      puts [row[0], row[1], row[2], row[11]].join(',')
      EnergyDatum.create(
        :month => row[0],
        :day => row[1],
        :year => 2012,
        :hour => row[2],
        :power => row[11],
        :user_id => 10
      )
    end
  end

#load sample data from "bad solar" location -- Princeton, NJ
  desc "load user data from csv"
  task :load_csv_data_bad  => :environment do
    require 'csv'

    CSV.foreach("/Users/bhander/Dropbox/workspace/rails_projects/perfnj.csv") do |row|
      puts [row[0], row[1], row[2], row[3]].join(',')
      State .create(
        :month => row[0],
        :day => row[1],
        :year => 2012,
        :hour => row[2],
        :power => row[3],
      )
    end
  end

end