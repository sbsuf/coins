require('rspec')
require('change')


describe('String#change') do
  it "returns [1] for 1" do
    expect("1".change()).to eq [1]
  end
  it "returns [1, 1, 1] for 3" do
    expect("3".change()).to eq [1,1,1]
  end
  it "returns [5, 1, 1] for 7" do
    expect("7".change()).to eq [5, 1, 1]
  end
  it "returns [10, 5, 1, 1] for 17" do
    expect("17".change()).to eq [10, 5, 1, 1]
  end
  it "returns [25, 1, 1] for 27" do
    expect("27".change()).to eq [25, 1, 1]
  end
  it "returns [25, 25, 1, 1] for 52" do
    expect("52".change()).to eq [25, 25, 1, 1]
  end
end
