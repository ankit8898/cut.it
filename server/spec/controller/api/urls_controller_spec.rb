require "rails_helper"

RSpec.describe Api::UrlsController, type:  :controller do

  let!(:url_one) {FactoryGirl.create(:url,name: 'http://g.com')}
  let!(:url_two) {FactoryGirl.create(:url,name: 'http://a.com')}

  describe "GET index" do

    it "has a 200 status code" do
      get :index
      expect(response.status).to eq(200)
    end

    it "should return json array" do
      get :index
      expect(json_body).to eq(
        [
          {
            'id' => url_one.id,
            'name' => "http://g.com",
            'code' => url_one.code,
            'shortened_url' => url_one.shortened_url,
            'visits' => 0
          },
          {
            'id' => url_two.id,
            'name' => "http://a.com",
            'code' => url_two.code,
            'shortened_url' => url_two.shortened_url,
            'visits' => 0
          }
        ]
      )
    end
  end


  describe "GET show" do
    it "has a 200 status code" do
      get :show,{code: url_one.code}
      expect(response.status).to eq(200)
    end

    it "return json for single" do
      get :show,{code: url_one.code}
      expect(json_body).to eq(
        {
          'id' => url_one.id,
          'name' => "http://g.com",
          'code' => url_one.code,
          'shortened_url' => url_one.shortened_url,
          'visits' => 1
        }
      )
    end
  end

end
