
Given(/^I requested to fetch all results from Scraper API$/) do
  @api_response = HTTParty.get("http://localhost:4567/interview/api/v1.0/results/")
end

When(/^I open the scraping site$/) do
  @phone_notes_app.goto('http://800notes.com/')
end


Then(/^I see values of the "([^"]*)" in API response corresponding to the scraping site$/) do |key|
  @api_response.each_with_index {|response,i| expect(response[key]).to include (@phone_notes_app.landing_page.send(key.to_sym)[i].text)}
end

Then(/^I see phone number formatted in the scraping site$/) do
  expect(@phone_notes_app.landing_page.phone_number[0].text).to match(/\d+-\d+-\d+/)
end

Then(/^I see area code formatted in the scraping site$/) do
  expect(@phone_notes_app.landing_page.area_code[0].text).to match(/\d+/)
end

Then(/^I see comments in the scraping site$/) do
  expect(@phone_notes_app.landing_page.comments[0].text).to match(/\D+/)
end