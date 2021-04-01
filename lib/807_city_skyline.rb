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
    
    self.t_b_skyline.each do |row_unit|
        placeholder_array = []
        self.l_r_skyline.each do |column_unit|
            if row_unit > column_unit
                placeholder_array << row_unit
            else
                placeholder_array << column_unit
            end
        end
        
        maxed_skyline << placeholder_array
    end
    
    finishing_height = maxed_skyline.flatten.sum
    
    finishing_height - starting_height
    require 'pry'; binding.pry
  end
end
