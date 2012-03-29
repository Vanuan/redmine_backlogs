require 'spec_helper'

describe Backlogs, "#setting" do
  it "returns backlogs settings" do
    Backlogs.configured?.should be_true
  end
end


