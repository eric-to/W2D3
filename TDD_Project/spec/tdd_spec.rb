require 'tdd'

RSpec.describe "#remove_dups" do
  let(:arr) { [1, 2, 1, 3, 3] }
  
  it "removes dups from an array" do
    expect(my_uniq(arr)).kind_of?(Array)
  end
  
  it "returns new array" do
    expect { 
      my_uniq(arr) 
    }.to_not change{arr}
  end
end

describe "#two_sum" do
  let(:arr) {[-1, 0, 2, -2, 1]}
  
  it "returns pairs of positions that sum to zero" do
    expect(arr.two_sum).to eq([[0, 4], [2, 3]])
  end
  
  it "smaller indices go before bigger indices" do 
    expect(arr.two_sum.all? {|pos| pos[0] < pos[1]}).to be_truthy
  end
  
  it "checks to see if pairs are in order" do
    expect(arr.two_sum.sort).to eq(arr.two_sum)
  end
end

describe "#my_transpose" do
  let(:matrix) {[
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8]
  ]}
  
  it "doesn't use .transpose" do
    expect(matrix).to_not receive(:transpose)
    matrix.my_transpose
  end
  
  it "transposes the original matrix" do
    expect(matrix.my_transpose).to eq(matrix.transpose)
  end
end

describe "#stock_picker" do
  let(:stocks) { [5, 4, 10, 8, 2] }
  let(:pair) { stock_picker(stocks) }
  
  it "doesn't sell stock before buying" do
    expect(pair[0] < pair[1]).to be_truthy
    expect(stocks[pair[0]] < stocks[pair[1]]).to be_truthy
  end
  
  it "returns biggest profit" do
    expect(pair).to eq([1, 2])
  end
end
