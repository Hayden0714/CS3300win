class Project < ApplicationRecord
    validates_presence_of :title, :description
    validates :title, length: { minimum: 2 }
    validates :description, length: { minimum: 5 }
end
