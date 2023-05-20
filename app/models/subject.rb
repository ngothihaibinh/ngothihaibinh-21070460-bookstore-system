class Subject < ApplicationRecord
    validates_uniqueness_of :name
    validates_presence_of :name, :description
end
