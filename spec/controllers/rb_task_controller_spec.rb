require 'fast_spec_helper'

require 'rb_tasks_controller'

describe RbTasksController, "#create" do
  it "creates tasks" do
    story = RbStory.new('subject'=>'Story 3', 'project_id'=>1,
              'author_id' => '1',"done_ratio" => "0",
              'estimated_hours' => '8',
              'tracker_id'=>'1')
    story.save!.should be_true

    task = RbTask.new('subject'=>'rails 3', 'project_id'=>1,
              'author_id' => '1',"done_ratio" => "0",
              'estimated_hours' => '8',
              'tracker_id'=>'1', :parent_issue_id => story.id)

    params = HashWithIndifferentAccess.new(task.attributes)
    RbTasksController.new.create
    
    story.children.size.should == 1
  end
end
