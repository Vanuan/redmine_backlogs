require 'spec_helper'

require 'rb_task'

describe RbTask, "#save" do
  it "updates attributes" do
    task = RbTask.new('subject'=>'rails 3', 'project_id'=>1,
              'author_id' => '1',"done_ratio" => "0",
              'estimated_hours' => '8',
              'tracker_id'=>'1')
    task.save!.should be_true
    task.subject.should eq('rails 3')
    task.estimated_hours.should eq(8)
  end
end

