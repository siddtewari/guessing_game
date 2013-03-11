class Person

	attr_accessor :first_name, :last_name

	def initialize first_name, last_name
		@first_name, @last_name = first_name, last_name
	end


	# self.attr_reader(:first_name) OR

	# def first_name
	# 	@first_name
	# end

end

