RSpec.describe TestGem2Dh do
  it "has a version number" do
    expect(TestGem2Dh::VERSION).not_to be nil
  end

  describe "#greet" do
    it 'returns "Hello World!"' do
      expect(TestGem2Dh.greet).to eq('Hello World!')
    end
  end
end
