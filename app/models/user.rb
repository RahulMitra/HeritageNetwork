class User < ActiveRecord::Base
  
  @password
  @password_confirmation
  include Enumerable
  require 'digest/sha1'
  
  attr_accessible :title, :body
  has_many :comments
  
	# first_name, and last_name must not be blank and must only contain letters
	# login username must not be blank and must not be already taken (case insensitive)
	# password must not be blank, and must match the second password field
	validates :first_name, :presence => true, :format => { :with => /\A[a-zA-Z]+\z/, :message => "must only contain letters" }
	validates :last_name, :presence => true, :format => { :with => /\A[a-zA-Z]+\z/, :message => "must ony contain letters" }
	validates :login, :presence => true, :uniqueness => { :case_sensitive => false }	
  validates :password, :presence => true, :confirmation => true  

    def full_name
      "#{first_name} #{last_name}"
    end

    def full_name=(fullName)
      first_name, last_name = fullName.split()
    end

  	def password_confirmation
  	  return @password_confirmation
  	end

  	def password_confirmation=(password)
  	    @password_confirmation = Digest::SHA1.hexdigest(password + self.salt)
    end

  	def password()
      return self.password_digest
    end

    def password=(password)
    	  self.salt = rand(1000).to_s
        self.password_digest = Digest::SHA1.hexdigest(password + self.salt)
    end

  	def password_valid?(password)
  	  if (self.password_digest == Digest::SHA1.hexdigest(password + self.salt))
  	    return true
  	  else
  	    return false
      end
    end

end  