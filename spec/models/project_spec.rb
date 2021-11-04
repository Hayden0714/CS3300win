#model spec test

require "rails_helper"

RSpec.describe Project, type: :model do
  context "validations tests" do
    it "ensures the title is present" do
      project = Project.new(description: "Content of the description")
      expect(project.valid?).to eq(false)
    end

    it "ensures the description is present" do
      project = Project.new(title: "Title")
      expect(project.valid?).to eq(false)
    end
    
    it "should be able to save project" do
      project = Project.new(title: "Title", description: "Some description content goes here")
      expect(project.save).to eq(true)
    end

    it "title should be longer than 2 characters" do
      project = Project.new(title: "a", description: "some description")
      expect(project).to_not be_valid

      project.title = "12"
      expect(project).to be_valid
    end

    it "has a description longer than 5 characters" do
      project = Project.new(title: "a vliad title", description: "1234")
      expect(project).to_not be_valid

      project.description = "12345"
      expect(project).to be_valid
    end

  end

  context "scopes tests" do

  end
end

#adding scope specs?

require "rails_helper"

RSpec.describe Project, type: :model do
  # ...

  context "scopes tests" do
    let(:params) { { title: "Title", description: "some description" } }
    before(:each) do
      Project.create(params)
      Project.create(params)
      Project.create(params)
    end

    it "should return all projects" do
      expect(Project.count).to eq(3)
    end

  end
end

