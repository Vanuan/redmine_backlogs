class Setting
  def self.plugin_redmine_backlogs
    return { :task_tracker => nil }
  end

  def self.table_exists?
    return true
  end

end
