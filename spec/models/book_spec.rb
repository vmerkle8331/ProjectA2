require "rails_helper"
describe "Book Attribute Requirements on Create", :type => :model do
  context "validation tests" do
    it "ensures the title is present when creating book" do
        book = Book.new(world: "World", description: "Content of the description", quote: "Content of the quote")
        expect(book.valid?).to eq(false)
    end
    it "should not be able to save book when title missing" do
        book = Book.new(world: "World", description: "Some description content goes here", quote: "Some quote goes here")
        expect(book.save).to eq(false)
    end

    it "ensures the world is present when creating book" do
        book = Book.new(title: "Title", description: "Content of the description", quote: "Content of the quote")
        expect(book.valid?).to eq(false)
    end
    it "should not be able to save book when world missing" do
        book = Book.new(title: "Title", description: "Some description content goes here", quote: "Some quote goes here")
        expect(book.save).to eq(false)
    end

    it "ensures the decription is present when creating book" do
        book = Book.new(title: "Title", world: "World", quote: "Content of the quote")
        expect(book.valid?).to eq(false)
    end
    it "should not be able to save book when description missing" do
        book = Book.new(title: "Title", world: "World", quote: "Some quote goes here")
        expect(book.save).to eq(false)
    end

    it "ensures the quote is present when creating book" do
        book = Book.new(title: "Title", world: "World", description: "Content of the description")
        expect(book.valid?).to eq(false)
    end
    it "should not be able to save book when quote missing" do
        book = Book.new(title: "Title", world: "World", description: "Some description content goes here")
        expect(book.save).to eq(false)
    end
    it "should be able to save book when have description and title and quote and world" do
        book = Book.new(title: "Title", world: "World", description: "Content of the description", quote: "Content of the quote")
        expect(book.save).to eq(true)
    end
  end
end
describe "Book Attribute Requirements on Edit", :type => :model do
  context "Edit book" do 
    before (:each) do
      @book = Book.create(title: "Title", world: "World", description: "Content of the description", quote: "Content of the quote")
      end
    it "ensures the title is present when editing book" do
      @book.update(:title => "New Title")
      expect(@book.title == "New Title")
    end
    it "ensures the world is present when editing book" do
        @book.update(:world => "New World")
        expect(@book.world == "New World")
    end
    it "ensures the description is present when editing book" do
        @book.update(:description => "New Description")
        expect(@book.description == "New Description")
    end
    it "ensures the quote is present when editing book" do
        @book.update(:quote => "New Quote")
        expect(@book.quote == "New Quote")
    end
  end
end
