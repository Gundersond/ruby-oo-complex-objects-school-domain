class School

    def initialize(school)
        @roster = {}
        @school = school
    end

    def roster
        @roster
    end

    def add_student(name, grade)
        if @roster.include?(grade)
            @roster[grade] << "#{name}"
        else
            @roster[grade] = []
            @roster[grade] << "#{name}"
        end
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        @roster.transform_values {|student| student.sort}
    end

end