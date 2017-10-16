require 'csv'

# 'file.csv' => Model
files = {
  'pokemon.csv' => Pokemon
}

# add all data in each csv file to the database 
files.keys.each do |file|
  csv_text = File.read(Rails.root.join('lib', 'seeds', file))
  csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')

  csv.each do |row|
    t = files[file].new

    csv.headers.each do |header|
      t[header] = row[header]
    end

    t.save
  end

  puts "#{file} added to the database."
end
