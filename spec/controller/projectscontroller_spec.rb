require 'rails_helper'
require_relative '../support/devise'

# Change this ArticlesController to your project
RSpec.describe ProjectsController, type: :controller do

    #log the user in first
    login_user

    let(:valid_attributes) {
        { :title => "Test title!", :description => "This is a test description"}
    }

    let(:valid_session) { {} }

    describe "GET #index" do
        it "returns a success response" do
            Project.create! valid_attributes
            get :index, params: {}, session: valid_session
            expect(response).to be_successful # be_successful expects a HTTP Status code of 200
            #expect(response).to have_http_status(302) # Expects a HTTP Status code of 302
        end
    end

    describe "GET /" do
        login_user

        context "from login user" do
            it "should return 200:OK" do
                get :index
                expect(response).to have_http_status(:success)
            end
        end
    end

    
    
    

end