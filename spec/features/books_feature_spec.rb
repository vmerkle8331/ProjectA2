require "rails_helper"
RSpec.feature "Books", type: :feature do
    context "Update book" do
        let(:book) { Book.create(title: "Test title", world: "Test World", description: "Test description", quote: "Test quote") }
        before(:each) do
            visit edit_book_path(book)
        end
        scenario "should be successful" do
            within("form") do
                fill_in "Description", with: "New description content"
            end
            click_button "Update Book"
            expect(page).to have_content("Book was successfully updated")
        end
        scenario "should fail" do
            within("form") do
                fill_in "Description", with: ""
            end
            click_button "Update Book"
            expect(page).to have_content("Description can't be blank")
        end
        
        scenario "should be successful" do
            within("form") do
                fill_in "Title", with: "New Title"
            end
            click_button "Update Book"
            expect(page).to have_content("Book was successfully updated")
        end
        scenario "should fail" do
            within("form") do
                fill_in "Title", with: ""
            end
            click_button "Update Book"
            expect(page).to have_content("Title can't be blank")
        end

        scenario "should be successful" do
            within("form") do
                fill_in "World", with: "New World"
            end
            click_button "Update Book"
            expect(page).to have_content("Book was successfully updated")
        end
        scenario "should fail" do
            within("form") do
                fill_in "World", with: ""
            end
            click_button "Update Book"
            expect(page).to have_content("World can't be blank")
        end

        scenario "should be successful" do
            within("form") do
                fill_in "Quote", with: "New quote content"
            end
            click_button "Update Book"
            expect(page).to have_content("Book was successfully updated")
        end
        scenario "should fail" do
            within("form") do
                fill_in "Quote", with: ""
            end
            click_button "Update Book"
            expect(page).to have_content("Quote can't be blank")
        end
    end
end
