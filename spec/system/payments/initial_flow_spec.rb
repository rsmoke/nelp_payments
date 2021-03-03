require "rails_helper"

RSpec.describe PaymentsController, type: :system do
  before do
    @me = FactoryBot.create(:user)
    login_as(@me)
  end
  let!(:current) { FactoryBot.create(:program_setting) }
  let!(:user) { FactoryBot.create(:user) }
  # let!(:payment) { FactoryBot.create(:payment { user: user }) }

  context "user signed in with no payments" do
    it "check for application payment due" do
      visit new_user_session_path
      fill_in "Email", with: user.email
      fill_in "Password", with: user.password
      click_on "Log in"
      expect(page).to have_selector(:link_or_button, 'Pay application fee')
    end

  context "user signed in with 1 or more payments" do
    it "check for application payment due" do
      visit new_user_session_path
      fill_in "Email", with: user.email
      fill_in "Password", with: user.password
      click_on "Log in"
      expect(page).to have_scontent('Account Summary')
    end

  end



end