gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/551_student_attendance_record_1'

class StudentAttendanceRecordOneTest < Minitest::Test
  def test_it_exists
    record = StudentAttendanceRecordOne.new
    assert_instance_of StudentAttendanceRecordOne, record
  end

  def test_returns_true_if_student_has_no_absences_or_lates
    record = StudentAttendanceRecordOne.new
    attendance = 'PPPPP'

    assert record.check_record(attendance)
  end

  def test_returns_true_if_only_absent_once
    record = StudentAttendanceRecordOne.new
    attendance = 'PPPPA'

    assert record.check_record(attendance)
  end

  def test_returns_false_if_absent_twice
    record = StudentAttendanceRecordOne.new
    attendance = 'APPPA'

    assert_equal false, record.check_record(attendance)
  end

  def test_returns_true_if_late_once
    record = StudentAttendanceRecordOne.new
    attendance = 'PPLPP'

    assert record.check_record(attendance)
  end

  def test_returns_true_if_late_twice
    record = StudentAttendanceRecordOne.new
    attendance = 'PPLLP'

    assert record.check_record(attendance)
  end

  def test_returns_false_if_late_three_times_in_a_row
    record = StudentAttendanceRecordOne.new
    attendance = 'PPLLL'

    assert_equal false, record.check_record(attendance)
  end

  def test_returns_true_if_late_three_times_in_a_row_nonconsecutively
    record = StudentAttendanceRecordOne.new
    attendance = 'LPLPL'

    assert record.check_record(attendance)
  end
end
