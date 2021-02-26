require 'rails_helper'

# Change this ArticlesController to your project
RSpec.describe PaymentsController, type: :controller do
 let!(:current) { FactoryBot.create(:program_setting) }
    # This should return the minimal set of attributes required to create a valid
    # Article. As you add validations to Article, be sure to adjust the attributes here as well.
    # let(:valid_attributes) {
    #     { :title => "Test title!", :description => "This is a test description", :status => "draft" }
    # }
    # login_admin

    # let(:valid_session) { {} }

    describe "GET #index" do
      login_admin
        it "returns a success response" do

            # Article.create! valid_attributes
            # get :index, params: {}, session: valid_session
            # get :index, session: valid_session
            # expect(response).to be_successful # be_successful expects a HTTP Status code of 200
            expect(response).to have_http_status(200) # Expects a HTTP Status code of 302
        end
    end

    # login_user

    describe "GET #payment_receipt" do
      login_user
        it "returns a success response" do
            # Article.create! valid_attributes
            # get :index, params: {}, session: valid_session
            # get :payment_receipt, session: valid_session
            # expect(response).to be_successful # be_successful expects a HTTP Status code of 200
            expect(response).to have_http_status(200) # Expects a HTTP Status code of 302
        end
    end
end

