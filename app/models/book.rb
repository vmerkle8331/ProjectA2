class Book < ApplicationRecord
    validates_presence_of :title, :world, :description, :quote
end