require 'movies'

describe Movies::Scan do
  it "broccoli is gross" do
    Movies::Scan.folder("Broccoli").should eql("Gross!")
  end

  it "anything else is delicious" do
    Movies::Scan.portray("Not Broccoli").should eql("Delicious!")
  end
end