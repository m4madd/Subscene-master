require "subscene"
require "webmock/rspec"

RSpec.configure do |config|
  config.treat_symbols_as_metadata_keys_with_true_values = true
  config.run_all_when_everything_filtered = true
  config.filter_run :focus
  config.order = 'random'
end

def stub_get(path)
  stub_request(:get, [Subscene::ENDPOINT, path].join('/'))
end

def fixture_path
  File.expand_path("../fixtures", __FILE__)
end

def fixture(file)
  File.read(File.join(fixture_path, '/', file))
end
