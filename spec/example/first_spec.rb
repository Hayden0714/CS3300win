#first test
require "rails_helper"

RSpec.describe "The math below is wrong..." do
  it "should equal 42 but we said 43" do
    expect(6 * 7).to eq(42)
  end
end

#second test
require "rails_helper"

RSpec.describe "hello spec" do
  # ...
  describe String do
    let(:string) { String.new }
    it "should provide an empty string" do
      expect(string).to eq("")
    end
  end
 end

 #starting to write my own tests
 require "rails_helper"

 Rspec.describe 'Project' do
  before do
    @project = Project.new(title:newproject, description:thisisanewproject)
  end

  context 'identify' do
    it 'should says the project was created on the page' do
      expect(@project.page).to eq("Project was successfully created")
    end
  end
end