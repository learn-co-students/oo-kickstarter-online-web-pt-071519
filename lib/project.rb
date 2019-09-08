class Project
    attr_accessor :title, :backers
    
    def initialize(title)
      @title = title
      @backers = []
    end
    
    def add_backer(backer)
      @backers << backer
      backer.backed_projects << self unless backer.backed_projects.include?(self)
    end
  end

  #project.backers << self unless project.backers.include?(self)