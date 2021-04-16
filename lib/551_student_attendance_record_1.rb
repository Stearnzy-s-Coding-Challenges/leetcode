class StudentAttendanceRecordOne
  def check_record(attendance)
    record = attendance.split('')

    absent_record = 0

    record.each_with_index do |presence, index|
      absent_record += 1 if presence == 'A'
      return false if absent_record == 2

      if index >= 2 && presence == 'L' && record[index - 1] == 'L' && record[index - 2] == 'L'
        return false
      end
    end

    true
  end
end
