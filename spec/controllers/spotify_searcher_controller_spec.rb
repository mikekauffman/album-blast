require 'spec_helper'

describe SpotifySearcherController do

  describe "GET 'songs'" do
    it "returns http success" do
      get 'songs'
      response.should be_success
    end
  end

  describe "GET 'albums'" do
    it "returns http success" do
      get 'albums'
      response.should be_success
    end
  end

end
