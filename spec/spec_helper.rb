require_relative '../book'
# Test for initialize method
describe Book do
  it "should create instance of the book class with 2 parameters" do
    book = Book.new("Title", "Author")
    expect(book).to be_an_instance_of Book
  end
end

# Test for title
describe '#title' do
  it "should return the right title" do
    book = Book.new("My Title", )
  end
end