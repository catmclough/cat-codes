require 'rails_helper'
require 'spec_helper'

describe Project do
  describe '#processing_projects' do
    it "returns all projects with the language 'Processing'" do
      processing_project = Project.create!(title: "My Great Processing Project", language: "Processing")

      # expect(Project.processing_projects).to include(Project.where(language: "Processing"))
      expect(Project.projects_in("Processing")).to include(processing_project)
    end

    it "does not return projects with the a language besides 'Processing'" do
      ruby_project = Project.create!(title: "My Ruby Project", language: "Ruby")

      expect(Project.projects_in("Ruby")).to include(ruby_project)
      expect(Project.projects_in("Processing")).not_to include(ruby_project)
    end
  end
end
