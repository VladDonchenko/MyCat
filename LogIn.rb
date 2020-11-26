require_relative "Superadmin"
require_relative "Admin"
require_relative "User"


class LogIn
	def initialize(login, password)
		@login = login
		@password = password
	end

	def superadmin?
		@login == "1" and @password == "1"
	end

	def admin?
		@login == "2" and @password == "2"
	end

	def check_user
	if superadmin?
		user = Superadmin.new(@login,@password)
	elsif admin?
		user = Admin.new(@login,@password)
	elsif (!superadmin? and !admin?) 
		user = User.new(@login,@password)
	end
	end
end