require_relative 'web_helpers'

feature "Duplicate email" do
  scenario "A user cannot sign up with an already registered email address" do
    duplicate_email_sign_up
    expect{duplicate_email_sign_up}.to change{User.count}.by 1
  end
end
