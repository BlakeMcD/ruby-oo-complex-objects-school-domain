# code here!
class School 

    attr_accessor :name, :roster

    def initialize(name)
        @name = name
        @roster = {}
    end


    def add_student(name, grade)
        if roster[grade] != nil #it already exists     
            roster[grade] << name
        else #it doesn't exist
            roster[grade] = []
            roster[grade] << name
        end


    end

    def grade(grade)
        roster[grade]
    end

    def sort
        sorted = {}
        roster.each do |grade, students|
            sorted[grade] = students.sort
        end
        sorted
    end
end