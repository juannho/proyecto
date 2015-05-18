class Directory < ActiveRecord::Base
  	belongs_to :user
  	belongs_to :category
  	has_many:links, dependent: :destroy
  	has_many:views, dependent: :destroy
  	has_many:likes, dependent: :destroy


  	#validaciones de campos.
	validates :nombre, :presence => {:message => "can't be blank"}
 	validates :descripcion, :presence => {:message => "can't be blank"}
 	validates :direccion, :presence => {:message => "can't be blank"}
 	validates :comuna,  :presence => {:message => "can't be blank"}	
 	validates :ciudad,  :presence => {:message => "can't be blank"}
 	validates :region,  :presence => {:message => "can't be blank"}
 	validates :email, :presence => {:message => "can't be blank"}	
 	validates :category_id,  :presence => {:message => "can't be blank"}
 	validates :foto_perfil, :presence => {:message => "can't be blank"}
end
