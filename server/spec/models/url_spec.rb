require "rails_helper"

RSpec.describe Url, type: :model do

  let!(:url) {FactoryGirl.create(:url,name: 'http://www.gupta.com')}

  it "should respond_to name" do
    expect(url).to respond_to(:name)
  end

  it "should respond_to code " do
    expect(url).to respond_to(:code)
  end

  describe "Url shortening" do

    let!(:url) {FactoryGirl.create(:url)}
    let(:sha_256) {Digest::SHA256.hexdigest(url.name)}
    let(:code) {sha_256.slice(0..3)}

    it "should trigger shorten callback and have shortened" do
      expect(url.shortened_url).to eq("http://foo.t/#/#{code}")
    end
  end

  describe "Base url" do
    it "should have a base url" do
      expect(url.base_url).to eq("http://foo.t")
    end
  end

  describe "sha_256 encoding" do

    let(:sha_256) { Digest::SHA256.hexdigest("http://www.gupta.com")}

    it "should have base 64 encoding of name" do
      expect(url.sha_256).to eq(sha_256)
    end
  end


  describe "code" do

    let(:sha_256) { Digest::SHA256.hexdigest("http://www.gupta.com")}

    it "should create code" do
      expect(url.code).to eq(sha_256.slice(0..3))
    end
  end
end
