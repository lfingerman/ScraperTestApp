module PhoneNotesApp
  class LandingPage < Huzzah::Page
    locator(:phone_number)  { links(class:'oos_previewTitle') }
    locator(:comments) {divs(class:'oos_previewBody')}
    locator(:number_of_comments) {spans(class:'postCount')}
    locator(:area_code) {spans(class:'wideScrOnly')}

  end

end
