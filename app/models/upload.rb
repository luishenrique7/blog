class Upload < ActiveRecord::Base
	has_attached_file :image, :styles => { :medium => "700x500>", :thumb => "120x90#" }
	validates_presence_of :nome, :descricao
	validates :nome, length: { minimum: 5 }

	validate :file_dimensions, :unless => 'errors.any?'

	def file_dimensions
	  if image.size
	    dimensions = Paperclip::Geometry.from_file(image.queued_for_write[:original].path)
	    if dimensions.width < 120 || dimensions.height < 90
	      errors.add(:image,'deve ter no minimo 120px de largura por 90px de altura')
	    end
	   end
	end
end
