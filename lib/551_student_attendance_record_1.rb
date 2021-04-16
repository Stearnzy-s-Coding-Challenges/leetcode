class StudentAttendanceRecordOne
  #?  Return false if string has 2 or more Absences
  #?  Return false if string has 3 or more CONSECUTIVE Lates

  def check_record(attendance)
    record = attendance.split('')

    absent_record = 0
    record.each_with_index do |presence, index|
      absent_record += 1 if presence == 'A'

      return false if absent_record == 2
    end

    true
  end
end
