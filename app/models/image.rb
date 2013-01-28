#encoding:utf-8
#encoding:utf-8
class Image < ActiveRecord::Base
	has_attached_file :avatar,
	    :styles => { :original => "800x3000>",
	                 :thumb=>"100x100>"
	                } ,
	    :url =>  "/uploads/:style/:basename.:extension",
	    :path => ":rails_root/public/uploads/:style/:basename.:extension"
	before_create :randomize_file_name
	def randomize_file_name
		if avatar_file_name
			extension = File.extname(avatar_file_name).downcase
			self.avatar.instance_write(:file_name, "#{Time.now.strftime("%Y/%m/%d/")}#{ActiveSupport::SecureRandom.hex(8)}#{extension}")
		end
	end
end