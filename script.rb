require 'pry'
require 'date'

Dir.glob('source/blog/*.erb').each do |file_path|
  # Read the contents of the file
  file_contents = File.read(file_path)

  next unless file_contents.match(%r{(:received: !ruby/object:DateTime (.*))})

  existing_date = DateTime.parse(Regexp.last_match(2))
  reformatted_date = existing_date.to_time.to_s
  updated_contents = file_contents.gsub(Regexp.last_match(1), "date: #{reformatted_date}")

  # Write the updated contents back to the file
  File.write(file_path, updated_contents)

  puts "Updated #{file_path}"
end
