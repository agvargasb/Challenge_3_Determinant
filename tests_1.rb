require_relative 'determinant'
require 'matrix'

det = Determinant.new

matrix_2 = [[1,2],[3,4]]
matrix_3 = [[1,0,0],[0,1,0],[0,0,1]]
matrix_3_1 = [[1,2,3],[4,5,6],[7,8,9]]
matrix_4 = [[1,1,1,1],[1,1,1,0],[1,1,0,1],[1,0,1,1]]
matrix_B = [[3,-3,3],[3,8,-4],[9,4,2]]
matrix_5 = [[1,1,1,1,2],[1,1,1,0,1],[1,1,0,1,3],[1,0,1,1,5],[1,2,3,2,1]]



puts det.recursive(matrix_3_1)
puts '--------'
puts Matrix[[1,2,3],[4,5,6],[7,8,9]].determinant

puts 'Next matrix'

puts det.recursive(matrix_B)
puts '--------'
puts Matrix[[3,-3,3],[3,8,-4],[9,4,2]].determinant
