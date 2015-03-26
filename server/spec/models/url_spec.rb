require "rails_helper"

RSpec.describe Url, type: :model do

  let(:url) {FactoryGirl.create(:url,name: 'http://foo.com')}

  it "should have a name" do
    expect(url.name).to eq("http://foo.com")
  end

  it "should have a shortened url" do
    expect(url.shortened).to eq("http://shor.ty/abcd")
  end

end
