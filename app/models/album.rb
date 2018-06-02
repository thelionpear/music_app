class Album < ApplicationRecord
    belongs_to :artists 
    has_many :songs, :through => :artists 
end
