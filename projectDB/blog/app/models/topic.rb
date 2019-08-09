class Topic < ApplicationRecord
	
	scope :search , lambda {|query| where (["name LIKE ? ","%#{query}#"])}
	scope :newest_first , lambda{order ("created_at DESC")}
	scope :visible , lambda{ where(:visible => true) }
	scope :invisible , lambda{where(:visible => false ) }
	scope :sorted , lambda {order(:position)}
	scope :show , lambda {puts("Normal Message")}
	
end
