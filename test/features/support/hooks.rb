Before do |scenario|
  @user = Huzzah::Role.new(:user)
  @phone_notes_app = @user.phone_notes_app
  if ENV['BROWSER'].downcase.include? 'sauce'
    session_id = @phone_notes_app.browser.driver.send(:bridge).session_id
    log_sauce_scenario(session_id, scenario)
  end
end

After do |scenario|
  @phone_notes_app.browser.close
  session_id = @phone_notes_app.browser.driver.send(:bridge).session_id
  status = (scenario.passed?) ? true : false
  if ENV['BROWSER'].downcase.include? 'sauce'
    log_sauce_scenario(session_id, scenario, status)
    p "SauceOnDemandSessionID=#{session_id};\n job-name=#{scenario.name}; Result=#{scenario.status.to_s}"
  end
end

def log_sauce_scenario(session_id, scenario,status=false)
  job_name = '*TestScraperApp* ' + "#{scenario.feature.file}:#{scenario.location.lines.first}"
  job = SauceWhisk::Jobs.fetch(session_id)
  job.name = job_name
  job.tags = scenario.source_tag_names
  job.passed = status
  job.save
end