require_relative 'determinant'

puts "Enter matrix size (for example 3, for a 3x3 matrix): "
n = gets.chomp.to_i

matrix = Array.new(n){Array.new(n)}

(0..n-1).each do |row|
  (0..n-1).each do |col|
    puts "Enter the value for row #{row} and column #{col}:"
    matrix[row][col] = gets.chomp.to_i
  end
end

det = Determinant.new

puts "The determinant is #{det.recursive(matrix)}"
