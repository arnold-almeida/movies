require 'movies'

describe Movies::Scan do
  it "broccoli is gross" do
    Movies::Scan.folder("Broccoli").should eql("Gross!")
  end

end