class TestingWorkshop
  attr_reader :results

  # Initializes a new instance of TestingWorkshop with the provided data.
  #
  # @param data [Array] The input data to be processed (default is an empty array).
  def initialize(data = [])
    @data = data
    @results = []
  end

  # Runs the entire processing workflow: gathers data, processes it, and saves the results.
  # For the purpose of this exercise, we are considering instantiating the class and calling this method as a full end-to-end application.
  def run
    gathered_data = gather_data(@data)
    processed_data = process_data(gathered_data)
    additional_processing_result = additional_processing(processed_data)
    final_results = conditional_processing(additional_processing_result)
    @results = final_results
  end

  private

  # Gathers all data to be processed.
  # For this workshop, this method is quite simple, but in a real-world scenario, it could become significantly more complex.
  #
  # @param data [Array] The data to be added.
  # @return [Array] The collated data after it has been gathered.
  def gather_data(data)
    fetched_data = [0, 3, 5] # Fetch data from an external source, e.g., an API
    data + fetched_data
  end

  # Performs some simple processing on the given data.
  #
  # @param gathered_data [Array] The data to be processed.
  # @return [Array] The processed data with each number squared.
  def process_data(gathered_data)
    gathered_data.map { |num| num**2 }
  end

  # Performs additional processing on the data.
  # This time, there a are multiple steps involved.
  #
  # @param processed_data [Array] The data to be further processed.
  # @return [Array] The data after additional processing.
  def additional_processing(processed_data)
    # Call two additional methods for further processing
    multiplied_data = multiply_values(processed_data)
    filter_large_values(multiplied_data)
  end

  # Multiplies each value in the data by a specified multiplier.
  #
  # @param data [Array] The data to be multiplied.
  # @param multiplier [Integer] The multiplier to apply (default is 3).
  # @return [Array] The data with each value multiplied by the multiplier.
  def multiply_values(data, multiplier = 3)
    data.map { |num| num * multiplier }
  end

  # Filters out values from the data that are greater than 50.
  #
  # @param data [Array] The data to be filtered.
  # @return [Array] The filtered data containing values less than or equal to 50.
  def filter_large_values(data)
    data.select { |num| num <= 50 }
  end

  # Applies conditional processing to the data, categorizing each number
  # into descriptive labels based on its value.
  #
  # @param data [Array] The data to be categorized.
  # @return [Array] The categorized data as descriptive strings.
  def conditional_processing(data)
    data.map do |num|
      case num
      when 0
        'Zero'
      when 1..10
        'Very Low'
      when 11..30
        'Low'
      when 31..50
        'Medium'
      else
        'Out of range'
      end
    end
  end
end
