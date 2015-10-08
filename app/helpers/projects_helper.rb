module ProjectsHelper
  def this_project
    Project.find(params[:id])
  end
end
