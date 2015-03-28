require 'rails_helper'

RSpec.describe UrlSerializer, type:  :serializer do
  let(:url) { FactoryGirl.create :url }
  subject { UrlSerializer.new(url).as_json }
  it { expect(subject.keys).to            match_array [:id, :name,:shortened_url,:code,:visits]}
  it { expect(subject[:id]).to            eq url.id}
  it { expect(subject[:name]).to          eq url.name}
  it { expect(subject[:code]).to          eq url.code}
  it { expect(subject[:visits]).to        eq 0}
  it { expect(subject[:shortened_url]).to eq url.shortened_url}
end
