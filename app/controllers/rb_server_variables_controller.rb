class RbServerVariablesController < RbApplicationController
  unloadable

  def index
    @context = params[:context]
    respond_to do |format|
      # TODO for some reason format.js is broken
      format.html { render :file => 'rb_server_variables/show.js.erb', :layout => false, :content_type => 'text/javascript' }
    end
  end

  alias :project :index
  alias :sprint :index
end
