require 'rails_helper'

RSpec.describe Project, type: :model do
    
    it 'has a title' do
        project = Project.new(
            title: '',
            description: 'this is a testing description'
        )

        expect(project).to_not be_valid
        project.title = "has a title now"
        expect(project).to be_valid
    end

    it 'has a description' do
        project = Project.new(title: 'a valid title', description: '')
        expect(project).to_not be_valid
        project.description = "has a valid description now"
        expect(project).to be_valid
    end

    it 'has a title longer than 2 characters'do
        project = Project.new(title: '1', description: 'a valid description')
        expect(project).to_not be_valid
        project.title = "has a valid title now"
        expect(project).to be_valid
    end

end