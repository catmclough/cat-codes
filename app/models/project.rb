class Project < ActiveRecord::Base

  def self.projects_in(some_language)
    Project.where(language: some_language)
  end
end
