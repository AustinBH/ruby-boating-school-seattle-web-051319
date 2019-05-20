class BoatingTest

  attr_reader :student, :test_name, :instructor
  attr_accessor :test_status
  @@tests = []

  def initialize(student, test_name, test_status, instructor)
    @student = student
    @test_name = test_name
    @test_status = test_status
    @instructor = instructor
    @@tests << self
  end

  def self.all
    @@tests
  end

end
