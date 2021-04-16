gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/551_student_attendance_record_1'

class StudentAttendanceRecordOneTest < Minitest::Test
  def test_it_exists
    record = StudentAttendanceRecordOne.new
    assert_instance_of StudentAttendanceRecordOne, record
  end
end
