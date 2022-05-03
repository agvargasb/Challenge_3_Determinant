# Class that represents the determinant of a matrix.

class Determinant
  def recursive(matrix, det = 0)
    len = matrix.length

    return matrix[0][0] * matrix[1][1] - matrix[0][1] * matrix[1][0] if matrix.length == 2

    (0..len - 1).each do |col_rem|
      sub_matrix = matrix.clone
      sub_matrix.delete_at(0)
      # puts "col_rem = #{col_rem}"

      (0..len - 2).each do |new_row|
        # puts "new_row = #{new_row}"
        sub_matrix[new_row] = sub_matrix[new_row][0...col_rem] + sub_matrix[new_row][col_rem + 1...len]
      end

      # puts 'Out of inner cycle'

      sign = (-1)**(col_rem % 2)
      sub_det = recursive(sub_matrix)

      # puts 'recursion done'

      det += sign * matrix[0][col_rem] * sub_det
    end

    det
  end
end
