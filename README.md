# MCM Phone Number Generator

**MCM Phone Number Generator** is a Ruby gem that provides seamless integration with My Country Mobile's [Phone Number Generator Tool](https://www.mycountrymobile.com/tools/phone-number-generator/). With this gem, developers can programmatically generate phone numbers for various countries and types (e.g., mobile, landline, VoIP) using the My Country Mobile API.

---

## Features

- **Generate Phone Numbers:** Quickly generate phone numbers for different countries and types.
- **Customizable Parameters:** Pass parameters like `country` and `type` to tailor your phone numbers.
- **Easy Integration:** Simple Ruby interface with minimal setup.
- **Error Handling:** Built-in error handling for smooth API interactions.

---

## Installation

Add the gem to your Gemfile:
```ruby
gem 'mcm_phone_number_generator'
```

Then run:
```bash
bundle install
```

Or install it manually:
```bash
gem install mcm_phone_number_generator
```

---

## Usage

### Step 1: Require the Gem
Load the gem into your Ruby script:
```ruby
require 'mcm_phone_number_generator'
```

### Step 2: Initialize the Client
Create an instance of the client. Specify the API URL for My Country Mobile:
```ruby
client = MCMPhoneNumberGenerator::Client.new("https://www.mycountrymobile.com/api/v1")
```

### Step 3: Generate a Phone Number
Call the `generate_phone_number` method with the required parameters:
```ruby
params = { country: "US", type: "mobile" }
result = client.generate_phone_number(params)
puts "Generated Phone Number: #{result['number']}"
```

#### Example Output
```json
{
  "number": "+1-555-123-4567",
  "country": "US",
  "type": "mobile"
}
```

---

## API Parameters

The following parameters can be passed to the `generate_phone_number` method:

| Parameter | Type     | Required | Description                          |
|-----------|----------|----------|--------------------------------------|
| `country` | `String` | Yes      | The country code (e.g., "US").       |
| `type`    | `String` | Yes      | The type of number (e.g., "mobile"). |

---

## Error Handling

The gem includes robust error handling. Here's an example of how to handle errors gracefully:
```ruby
begin
  result = client.generate_phone_number(params)
  puts "Generated Phone Number: #{result['number']}"
rescue MCMPhoneNumberGenerator::APIError => e
  puts "An error occurred: #{e.message}"
end
```

Common error scenarios:
- **Network Errors:** Raised if there are issues connecting to the API.
- **Invalid Parameters:** Raised if required parameters are missing or invalid.
- **API Errors:** Raised if the API returns a non-successful response (e.g., `400 Bad Request`).

---

## Development

To contribute or modify this gem:
1. Clone the repository:
   ```bash
   git clone https://github.com/your-username/mcm_phone_number_generator.git
   cd mcm_phone_number_generator
   ```
2. Install dependencies:
   ```bash
   bundle install
   ```
3. Run tests:
   ```bash
   bundle exec rspec
   ```

---

## Example Application

Here’s a quick example of how you can use this gem in a real-world application:
```ruby
require 'mcm_phone_number_generator'

client = MCMPhoneNumberGenerator::Client.new("https://www.mycountrymobile.com/api/v1")
params = { country: "IN", type: "landline" }

begin
  result = client.generate_phone_number(params)
  puts "Generated Phone Number: #{result['number']}"
rescue MCMPhoneNumberGenerator::APIError => e
  puts "Error: #{e.message}"
end
```

---

## Contributing

Contributions are welcome! Please open an issue or submit a pull request if you'd like to contribute to this gem.

To contribute:
1. Fork the repository.
2. Create a new branch for your feature or bugfix:
   ```bash
   git checkout -b my-new-feature
   ```
3. Commit your changes:
   ```bash
   git commit -am 'Add new feature'
   ```
4. Push to the branch:
   ```bash
   git push origin my-new-feature
   ```
5. Open a pull request on GitHub.

---

## License

This gem is open-source and available under the [MIT License](https://opensource.org/licenses/MIT).

---

## Additional Resources

- [My Country Mobile Phone Number Generator Tool](https://www.mycountrymobile.com/tools/phone-number-generator/)
- [Ruby Gems Documentation](https://guides.rubygems.org/)
- [HTTParty Documentation](https://github.com/jnunemaker/httparty)

---

## Contact

For support or questions, reach out at:
- **Email:** info@mycountrymobile.com
- **Website:** [My Country Mobile](https://www.mycountrymobile.com)
```

---

### **Key Features of This README**
1. **Comprehensive Documentation**:
   - Includes installation instructions, usage examples, API parameters, and error handling.
2. **Development Instructions**:
   - Clearly explains how contributors can set up and test the gem.
3. **Real Examples**:
   - Provides sample code and example outputs.
4. **Additional Resources**:
   - Links to related tools and documentation.
5. **Professional Layout**:
   - Easy to read with clear sections and formatting.

---