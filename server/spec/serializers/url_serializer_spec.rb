require 'rails_helper'

RSpec.describe UrlSerializer, type:  :serializer do
  let(:url) { FactoryGirl.create :url }
  subject { UrlSerializer.new(url).as_json }
  it { expect(subject.keys).to        eq [:id, :name,:shortened]}
  it { expect(subject[:id]).to        eq url.id}
  it { expect(subject[:name]).to      eq url.name}
  it { expect(subject[:shortened]).to eq url.shortened}
end
