class Register < ActiveRecord::Base

	validates_presence_of :name, :affiliation, :email, :nickname => " - mandatory field"

	validates_format_of :email, :with =>/^[a-zA-Z][\w\.-]*[a-zA-Z0-9]@[a-zA-Z0-9][\w\.-]*[a-zA-Z0-9]\.[a-zA-Z][a-zA-Z\.]*[a-zA-Z]$/, :message => " - Incorrect email address format"

end
