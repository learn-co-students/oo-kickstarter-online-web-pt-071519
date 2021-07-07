require 'pry'
class Project
  attr_reader :title, :backers
  def initialize(title)
    @title = title
    @backers = []
  end
  def add_backer(added_backer)

      @backers << added_backer
      added_backer.backed_projects << self
  end
end
