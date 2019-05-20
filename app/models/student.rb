class Student

  attr_reader :first_name
  @@students = []

  def initialize(first_name)
    @first_name = first_name
    @@students << self
  end

  def self.all
    @@students
  end

  #should initialize a new boating test with a Student (Object),
  #a boating test name (String), a boating test status (String), and an Instructor (Object)
  def add_boating_test(test_name, test_status, instructor)
    BoatingTest.new(self, test_name, test_status, instructor)
  end

  def self.find_student(first_name)
    self.all.find{|student|student.first_name == first_name}
  end

  #should return the percentage of tests that the student has passed,
  #a Float (so if a student has passed 3 / 9 tests that they've taken,
  #this method should return the Float 33.33)
  def grade_percentage
    tests = BoatingTest.all.select{|test|test.student == self}
    passing = tests.select{|test|test.test_status == "passed"}.count / tests.count.to_f
    (passing * 100).round(2)
  end

end
