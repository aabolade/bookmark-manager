require_relative 'web_helpers'

feature "Levels of Validation" do
  scenario "A user cannot sign in with a blank email address" do
    empty_email_sign_up
    expect{empty_email_sign_up}.to change{User.count}.by 0
  end
end
