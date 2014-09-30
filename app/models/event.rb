class Event < ActiveRecord::Base

	validates :event_title, :location, :state, presence: true
  validates :description, length: { minimum: 26 }
  #validates :employees, numericality: { greater_than_or_equal_to: 1 }
  # validates :screenshot, format: { with: /\w+\.(gif|jpg|jpeg|png)\z/i, 
  #           message: "Only GIF, JPG, JPEG, PNG" }


	has_attached_file :image_logo, styles: {
    :small => "200x150>", :medium => "300x300>",
    :large => "500x500>", :thumb => "100x100>"
  }, #:default_url => "/:style/mks7.jpg"

  :storage => :s3,
    :s3_credentials => Proc.new{|a| a.instance.s3_credentials }
    validates_attachment_content_type :image_logo, :content_type => /\Aimage\/.*\Z/

  def s3_credentials
     {
        :bucket => ENV['AWS_BUCKET'],
        :access_key_id => ENV['AWS_ACCESS_KEY_ID'],
        :secret_access_key => ENV['AWS_SECRET_ACCESS_KEY']
    }
  end


	def self.comingEvent
    where('starts >= ?', Time.now).order(:starts)
  end

	def free?
		ticket.blank? || ticket.zero?
	end	
end
