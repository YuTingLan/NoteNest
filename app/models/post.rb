class Post < ApplicationRecord
    validates :name, :title, presence: true

    def self.color_list
        [['Yellow','#F9FDA9 '],['Blue',' #33DBFF '],['Green','#92EDA9'],['Pink','#FDA9CF'],['Cream-Colored','#FDD7A9'],['Purple','#A992ED']]
    end
end
