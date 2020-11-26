class Admin

	def initialize(login, password)
		@login = login
		@password = password
	end

	def check_pat(pet)
		p"Hello Admin"
		x = gets.chomp.to_s
		while x !="0"

			case x
			when "1"
				pet.feed
				pet.print_points
				pet.save
				x = gets.chomp.to_s
			when "2"
				pet.print_points
				pet.save
				x = gets.chomp.to_s
			when "3"
				pet.piss
				pet.print_points
				pet.save
				x = gets.chomp.to_s
			when "4"
				pet.clean
				pet.print_points
				pet.save
				x = gets.chomp.to_s
			when "5"
				pet.fix_helth
				pet.print_points
				pet.save
				x = gets.chomp.to_s
			when "6" 
				pet.go_to_sleep
				pet.print_points
				pet.save
				x = gets.chomp.to_s
			when "7" 
				pet.wash
				pet.print_points
				pet.save
				x = gets.chomp.to_s
			when "8" 
				pet.random_frazes
				pet.save
				x = gets.chomp.to_s
			when "9"
				pet.waiting
				pet.print_points
				x = gets.chomp.to_s
			when "r"
				pet.rename
				pet.print_points
				pet.save
				x = gets.chomp.to_s
			when "a"
				pet.change_age
				pet.print_points
				pet.save
				x = gets.chomp.to_s
			when "help"
				pet.help()
				p "Press r to to rename your pet"
				p "Press a to change age"
				x = gets.chomp.to_s
			else
				p"Exeption:You used the usless key. Please use 'help' to understand what`s wrong"
				x = gets.chomp.to_s
			end
		end
	end
end
