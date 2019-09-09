class Backer
  attr_reader :backed_projects, :name
  def initialize (name)
    @name=name
    @backed_projects=[]
  end

  def back_project (project_1)
    @backed_projects<<project_1
    project_1.add_backer(self)
  end


end
