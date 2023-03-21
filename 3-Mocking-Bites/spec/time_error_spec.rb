require "time_error"

RSpec.describe "TimeError class test" do
  it "calls an api to get a time from a server then returns the difference in time with my local clock" do
    fake_request = double :request
    allow(fake_request).to receive(:get).and_return('{"abbreviation":"GMT","client_ip":"82.24.90.211","datetime":"2023-03-21T09:56:31.089100+00:00","day_of_week":2,"day_of_year":80,"dst":false,"dst_from":null,"dst_offset":0,"dst_until":null,"raw_offset":0,"timezone":"Europe/London","unixtime":1679392591,"utc_datetime":"2023-03-21T09:56:31.089100+00:00","utc_offset":"+00:00","week_number":12}')
    my_time_error = TimeError.new(fake_request)
    time = Time.new(2023, 03, 21, 9, 56, 31)
    expect(my_time_error.error(time).round).to eq 0
  end
end