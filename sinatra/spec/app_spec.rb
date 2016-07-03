# spec/app_spec.rb
require File.expand_path '../spec_helper.rb', __FILE__

describe "GET /" do
  it "should allow accessing the home page" do
    get '/'
    expect(last_response).to be_ok
  end
end

describe "GET /encode" do
  it "should 400 if no message is passed in" do
    get '/encode'
    expect(last_response).to be_bad_request
  end

  it "should 200 if a message is passed in" do
    get '/encode', {message: "foobar"}
    expect(last_response).to be_ok
  end
end

describe "GET /decode" do
  it "should 400 if no message is passed in" do
    get '/decode'
    expect(last_response).to be_bad_request
  end

  it "should 200 if a message is passed in" do
    get '/decode', {message: "foobar"}
    expect(last_response).to be_ok
  end
end
