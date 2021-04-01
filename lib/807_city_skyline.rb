class CitySkyline
  def l_r_skyline(grid)
    grid.map do |row|
      row.max
    end
  end

  def t_b_skyline(grid)
    grid.transpose.map do |column|
      column.max
    end
  end

  def max_increase_keeping_skyline(grid)
    starting_height = grid.flatten.sum

    columns = grid.transpose

    maxed_skyline = []

    l_r_skyline(grid).each do |row_unit|
      placeholder_array = []
      t_b_skyline(grid).each do |column_unit|
        placeholder_array << if row_unit < column_unit
                               row_unit
                             else
                               column_unit
                             end
      end
      maxed_skyline << placeholder_array
    end

    finishing_height = maxed_skyline.flatten.sum

    finishing_height - starting_height
  end
end
