class User < ActiveRecord::Base
	has_many:directories, dependent: :destroy
	# Include default devise modules. Others available are:
	# :confirmable, :lockable, :timeoutable and :omniauthable
	devise :database_authenticatable, :registerable,
	         :recoverable, :rememberable, :trackable, :validatable
    #validaciones de campos.
	validates :nombre, :presence => {:message => "can't be blank"}
 	validates :apellidos, :presence => {:message => "can't be blank"}
 	validates :email, :presence => {:message => "can't be blank"}
 	validates :email, uniqueness: {case_sensitive: false}

 	def nombre_completo
 		nombre + " " + apellidos 		
 	end
end
