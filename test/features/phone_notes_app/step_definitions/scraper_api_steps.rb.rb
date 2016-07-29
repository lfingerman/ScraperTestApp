
Given(/^I requested to fetch all results from Scraper API$/) do
  @api_response = HTTParty.get("http://localhost:4567/interview/api/v1.0/results/")
end

When(/^I open the scraping site$/) do
  @phone_notes_app.goto('http://800notes.com/')
end


Then(/^I see values of the "([^"]*)" in API response corresponding to the scraping site$/) do |key|
  @api_response.each_with_index {|response,i| expect(response[key]).to include (@phone_notes_app.landing_page.send(key.to_sym)[i].text)}
end