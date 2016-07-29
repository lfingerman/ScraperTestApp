Before do |scenario|
  @user = Huzzah::Role.new(:user)
  @phone_notes_app = @user.phone_notes_app
end