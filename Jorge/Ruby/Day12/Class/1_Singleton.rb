class Base  
 	def initialize
         @value = 0
 	end
 	def any
         @value = 10
 	end
 	 def some
         @value
 	end

 	def singleton_example
		@singletn_example ||= Base.new
	end

 end  


 b1 = Base.new  
 p b1.any # Output => 10  
 b2 = Base.new  
 p b2.some # Output => 0
