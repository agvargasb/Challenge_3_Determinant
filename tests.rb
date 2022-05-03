# require 'matrix'
require_relative 'determinant'

# puts "Enter first num: "
# num1 = gets.chomp

# puts "enter second num: "
# num2 = gets.chomp

# puts num1.to_f + num2.to_f

# matrix = Matrix[[1,2,3],[4,5,6],[7,8,9]]
matrix_3 = [[1,2,3],[4,5,6],[7,8,9]]
matrix_2 = [[1,2],[3,4]]

# puts matrix_2.length

det = Determinant.new

# puts det.recursive(matrix_2)
# puts matrix_2[0][0]

len = matrix_3.length

sub_matrix = matrix_3.clone
sub_matrix.delete_at(0)

(0..len - 2).each do |new_row|
  sub_matrix[new_row] = sub_matrix[new_row][0...2] + sub_matrix[new_row][2 + 1...len]
end

puts sub_matrix[0]
puts '-------'
puts sub_matrix[1]
