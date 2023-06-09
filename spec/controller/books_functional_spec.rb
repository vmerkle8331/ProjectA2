require "rails_helper"
RSpec.describe BooksController, :type => :controller do
    login_user
    let(:valid_attributes) {
        { :title => "Test title!", :world => "Test world!", :description => "This is a test description", :quote => "Test quote" }
    }

    let(:valid_session) { {} }
    
    describe "test web requests" do
        context "GET #index" do
            it "returns a success response" do
            get :index
            expect(response).to have_http_status(:ok)
            end
        end
        context "GET #show" do
            let!(:book) { Book.create(title: "Test title", world: "Test world", description: "Test description", quote: "Test quote") }
            it "returns a success response" do
                expect(response).to have_http_status(:ok)
            end
        end
    end
end
