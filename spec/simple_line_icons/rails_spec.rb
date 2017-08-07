require 'rails/engine'
require "spec_helper"

RSpec.describe SimpleLineIcons::Rails do
  it "has a version number" do
    expect(SimpleLineIcons::Rails::VERSION).not_to be nil
  end
end