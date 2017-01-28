class Story < ApplicationRecord

    validates_presence_and_uniqueness_of :slug
    validates_presence_of :description
	validates_presence_of :reporter
	validates_presence_of :deadline
	validates_presence_of :date

end
