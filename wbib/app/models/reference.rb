class Reference < ActiveRecord::Base
    require 'uri'    
    before_validation :add
    validates :URL, presence: true
    validates_format_of :URL, :with => /(http|https):\/\/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(:[0-9]{1,5})?(\/.*)?/, :on => :create
    validates :topic, presence: true
    validates :annotation, presence: true
    
    def add
        if self.URL =~ /^(http|https):\/\/.*/
            
        else
            self.URL = :"http://#{self.URL}"            
        end
    end

end

