require 'config'

$:.push File.expand_path("../../plugins/redmine_backlogs/app/models", __FILE__)
$:.push File.expand_path("../stubs", __FILE__)

require 'user'
require 'issue'

require File.expand_path('../../plugins/redmine_backlogs/lib/backlogs_issue_patch', __FILE__)
