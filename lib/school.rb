# code here!
require 'pry'
class School

    def initialize(school_name, roster={})
        @school_name = school_name
        @roster = roster
    end

    def roster
        @roster
    end

    def add_student(name, grade)

        # binding.pry

        if @roster[grade] == nil
            @roster[grade] = [name]
        else
            @roster[grade] << name
        end

    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        @roster.transform_values do |names|
            names.sort
        end

    end

end

