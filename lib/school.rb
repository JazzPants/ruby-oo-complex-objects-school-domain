# code here!
class School
    attr_accessor :name, :roster

    def initialize(name)
        @name=name
        @roster= {}
    end

    def add_student(student, grade)
            if roster[grade] == nil
              roster[grade] = []
            end
            roster[grade] << student
        end

    def grade(number)
        roster[number]
    end

    def sort
        sorted = {}
        roster.each do |grade, students| 
            sorted[grade] = students.sort
    end
        sorted
    end

end

school = School.new("Bayside High School")
school.add_student("Zach Morris", 9)
school.roster
# => {9 => ["Zach Morris"]}