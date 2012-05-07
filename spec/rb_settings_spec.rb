require 'fast_spec_helper'

describe Backlogs, "#setting" do
  it "returns backlogs settings" do
    RbStory.stub(:has_settings_table).and_return(true)
    Backlogs.configured?.should be_true
  end
end


