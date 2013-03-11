class Pet
	def initialize type, name, owner
		@type = type
		@name = name
		@owner = owner
	end

	def administer_vaccines
		raise "No vaccines for HedgeHog"
	end
end

class Cat < Pet #This is inheritance
	def initialize name, owner, foo
		super(name + "Meow", owner)
	end

	def administer_vaccines

	end
end
