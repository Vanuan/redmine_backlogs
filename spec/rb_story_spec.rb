require_relative 'fast_spec_helper'
require 'rb_story'

describe RbStory, "#update_attributes" do
  it "create and update" do
    RbStory.stub!(:find).and_return([RbStory.new])

    story = RbStory.new('subject'=>'Story 3', 'project_id'=>1,
              'author_id' => '1',"done_ratio" => "0",
              'estimated_hours' => '8',
              'tracker_id'=>'1')
    story.save!.should be_true
    story.subject.should == ('Story 3')
    story.estimated_hours.should == (8)

    story = RbStory.find(:all, :conditions => { :subject => 'Story 3' }).first
    story.update_and_position!('subject'=>'rails 3', 'project_id'=>1,
              'author_id' => '1',"done_ratio" => "0",
              'estimated_hours' => '8',
              'tracker_id'=>'1')
    story.save!.should be_true
    story.subject.should == ('rails 3')
    story.estimated_hours.should == (8)
  end
end

