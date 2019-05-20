class Instructor

  attr_reader :name
  @@instructors =  []

  def initialize(name)
    @name = name
    @@instructors << self
  end

  def self.all
    @@instructors
  end

  def pass_student(student, test_name)
    test = BoatingTest.all.find{|test|test.student == student && test.test_name}
    if test.class == BoatingTest
      test.test_status = "passed"
    else
      BoatingTest.new(student, test_name, "passed", self)
    end
  end

  def fail_student
    test = BoatingTest.all.find{|test|test.student == student && test.test_name}
    if test.class == BoatingTest
      test.test_status = "failed"
    else
      BoatingTest.new(student, test_name, "failed", self)
    end
  end

end
