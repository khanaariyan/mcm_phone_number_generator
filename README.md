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
Then run:

bash
Copy
Edit
bundle install
Or install it manually:

bash
Copy
Edit
gem install mcm_phone_number_generator
Usage
Step 1: Require the Gem
Load the gem into your Ruby script:

ruby
Copy
Edit
require 'mcm_phone_number_generator'
Step 2: Initialize the Client
Create an instance of the client. Specify the API URL for My Country Mobile:

ruby
Copy
Edit
client = MCMPhoneNumberGenerator::Client.new("https://www.mycountrymobile.com/api/v1")
Step 3: Generate a Phone Number
Call the generate_phone_number method with the required parameters:

ruby
Copy
Edit
params = { country: "US", type: "mobile" }
result = client.generate_phone_number(params)
puts "Generated Phone Number: #{result['number']}"
Example Output
json
Copy
Edit
{
  "number": "+1-555-123-4567",
  "country": "US",
  "type": "mobile"
}
API Parameters
The following parameters can be passed to the generate_phone_number method:

Parameter	Type	Required	Description
country	String	Yes	The country code (e.g., "US").
type	String	Yes	The type of number (e.g., "mobile").
Phone Number Generator Tool
This gem is powered by the My Country Mobile Phone Number Generator Tool. For additional customization and manual testing, you can access the tool directly.

Error Handling
The gem includes robust error handling. Here's an example of how to handle errors gracefully:

ruby
Copy
Edit
begin
  result = client.generate_phone_number(params)
  puts "Generated Phone Number: #{result['number']}"
rescue MCMPhoneNumberGenerator::APIError => e
  puts "An error occurred: #{e.message}"
end
Common error scenarios:

Network Errors: Raised if there are issues connecting to the API.
Invalid Parameters: Raised if required parameters are missing or invalid.
API Errors: Raised if the API returns a non-successful response (e.g., 400 Bad Request).
Development
To contribute or modify this gem:

Clone the repository:
bash
Copy
Edit
git clone https://github.com/khanaariyan/mcm_phone_number_generator.git
cd mcm_phone_number_generator
Install dependencies:
bash
Copy
Edit
bundle install
Run tests:
bash
Copy
Edit
bundle exec rspec
Example Application
Here’s a quick example of how you can use this gem in a real-world application:

ruby
Copy
Edit
require 'mcm_phone_number_generator'

client = MCMPhoneNumberGenerator::Client.new("https://www.mycountrymobile.com/api/v1")
params = { country: "IN", type: "landline" }

begin
  result = client.generate_phone_number(params)
  puts "Generated Phone Number: #{result['number']}"
rescue MCMPhoneNumberGenerator::APIError => e
  puts "Error: #{e.message}"
end
Contributing
Contributions are welcome! Please open an issue or submit a pull request if you'd like to contribute to this gem.

To contribute:

Fork the repository.
Create a new branch for your feature or bugfix:
bash
Copy
Edit
git checkout -b my-new-feature
Commit your changes:
bash
Copy
Edit
git commit -am 'Add new feature'
Push to the branch:
bash
Copy
Edit
git push origin my-new-feature
Open a pull request on GitHub.
License
This gem is open-source and available under the MIT License.

Additional Resources
My Country Mobile
Phone Number Generator Tool
Ruby Gems Documentation
HTTParty Documentation
Contact
For support or questions, reach out at:

Email: info@mycountrymobile.com
Website: My Country Mobile
yaml
Copy
Edit

---

### **What’s New in This README**
1. **Added a Dedicated Section for "Phone Number Generator Tool":**
   - Highlights the external tool link.
2. **Enhanced Layout:**
   - Made it easier to navigate for new users.
3. **Emphasized Error Handling and Example Application:**
   - Demonstrates real-world usage and API capabilities.