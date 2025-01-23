require 'httparty'

module MCMPhoneNumberGenerator
  class APIError < StandardError; end

  class Client
    include HTTParty

    def initialize(base_uri = 'https://www.mycountrymobile.com/api/v1')
      self.class.base_uri(base_uri)
      @headers = { 'Content-Type' => 'application/json' } # Removed Authorization header
    end

    def generate_phone_number(params = {})
      # Validate required parameters
      validate_params!(params)

      # Log the request for debugging purposes (optional)
      puts "Requesting phone number generation with params: #{params}"

      # Make the POST request
      response = self.class.post('/phone-number-generator', headers: @headers, body: params.to_json)

      # Raise an error if the response is unsuccessful
      raise APIError, "Error: #{response.code} - #{response.message}" unless response.success?

      # Parse and return the JSON response
      JSON.parse(response.body)
    rescue HTTParty::Error => e
      raise APIError, "Network error occurred: #{e.message}"
    rescue JSON::ParserError => e
      raise APIError, "Response parsing error: #{e.message}"
    end

    private

    def validate_params!(params)
      required_keys = [:country, :type]
      missing_keys = required_keys.select { |key| !params.key?(key) }
      unless missing_keys.empty?
        raise ArgumentError, "Missing required parameters: #{missing_keys.join(', ')}"
      end
    end
  end
end
