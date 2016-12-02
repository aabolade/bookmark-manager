require_relative "web_helpers"

feature "Invalid Email" do
  scenario "a user can't sign in with an email address that has an invalid format" do
    invalid_email_sign_in
    expect{invalid_email_sign_in}.to change{User.count}.by 0
  end
end
