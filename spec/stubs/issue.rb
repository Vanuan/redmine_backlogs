class Issue

  def children
    []
  end

  def self.column_names
    [ "subject", "estimated_hours", "id" ]
  end

  def becomes(klass)
    klass.new(self.attributes)
  end

  def initialize(attributes=nil, *args)
    @attributes = attributes
    unless attributes == nil
      @id = attributes["id"]
      @subject = attributes["subject"]
      @estimated_hours = attributes["estimated_hours"].to_i
    end
  end

  def attributes
    @attributes
  end

  def update_attributes(attributes=nil, *args)
    
  end

  def id
    @id
  end

  def subject
    @subject
  end

  def estimated_hours
    @estimated_hours
  end

  def save!
    true
  end

  def init_journal(user, notes = "")
  end

  def self.safe_attributes(param)
  end

end

def before_save(arg)
end

def after_save(arg)
end
def after_destroy(arg)
end

def unloadable
end

def acts_as_list
end

def acts_as_list_with_gaps(param)
end
