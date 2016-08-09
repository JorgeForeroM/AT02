=begin
FORMAT
 For the format of data type, it will become integer or floating the input string 
=end

name = gets.chomp #In case of string
weight = gets.chomp.to_f #In case of float
age = gets.chomp.to_i #In case of int

method = GuideLine.new
weightMinus5 = methodExample(weight) #When send parameter to method I going use parentesis

=begin
CLASSES
 The class is gont to have the same name as the file.
 We are goint to use starting with capital letter and if is a frase, 
 the secon word initial with capital letter
=end

class GuideLine

=begin
VARIABLES GETTER/SETTER
 To create getters and setters I going to use the following keywords 
 To getters: attr_reader
 To setters: attr_writer
 both: attr_accessor
=end

 	attr_reader :name
 	attr_writer :age
	attr_accessor :weight

=begin
METHODS
 We are goint starting with lower case and if is a frase, 
 the secon word initial with capital letter
 The parameters that recieve the method going to have parentesis
 The return word is going to trat to be omitted
=end
	def methodExample(weight)
		weight - 5
	end
=begin
IF CONDITION
One of the forms that anybody are customed is the following:
result = (condition) ? (expression-if-true) : (expression-if-false)
=end

	def methodExample2(age)
		result = age > 18? "is adult" : "is younger"
	end
end





