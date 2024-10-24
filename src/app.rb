require_relative 'testing_workshop'

# Create a new instance of the TestingWorkshop class with data and run it
data = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]
workshop = TestingWorkshop.new(data)
workshop.run

# Output the final results
puts "Final results: #{workshop.results}"
