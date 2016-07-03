# spec/app_spec.rb
require File.expand_path '../spec_helper.rb', __FILE__

describe "GET /" do
  it "should allow accessing the home page" do
    get '/'
    expect(last_response).to be_ok
  end
end
