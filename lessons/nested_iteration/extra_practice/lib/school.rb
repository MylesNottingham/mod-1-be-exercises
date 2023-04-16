class School
  attr_reader :name, :groups, :courses

  def initialize(name, groups)
    @name = name
    @groups = groups
    @courses = []
  end

  def add_course(course)
    @courses << course
  end

  def assign_to_group(student)
    student.group = @groups.sample
  end

  def group_all_students
    @courses.each do |course|
      course.students.each do |student|
        assign_to_group(student) if student.group.nil?
      end
    end
  end

  def names
    @courses.flat_map do |course|
      course.students.map do |student|
        student.name
      end
    end.uniq
  end

  def students_by_group
    @groups.each_with_object({}) do |group, hash|
      hash[group] = []
      @courses.each do |course|
        course.students.each do |student|
            hash[group] |= [student] if student.group == group
        end
      end
    end
  end
end
