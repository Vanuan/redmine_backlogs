require 'config'

plugin_path = '../../vendor/plugins/redmine_backlogs/'
$:.push File.expand_path("#{plugin_path}/app/helpers", __FILE__)
$:.push File.expand_path("#{plugin_path}/app/models", __FILE__)
$:.push File.expand_path("#{plugin_path}/app/controllers", __FILE__)
$:.push File.expand_path("#{plugin_path}/lib", __FILE__)
$:.push File.expand_path("../stubs", __FILE__)

def require_dependency(file)
  require file
end

require 'application_controller'
require 'issue'
require 'issue_priority'
require 'setting'
require 'tracker'
require 'user'

require 'rails_hash_with_indifferent_access'
require 'rails_object'

require 'backlogs_issue_patch'
require 'backlogs_setup'
require 'rb_common_helper'
require 'rb_application_controller'

