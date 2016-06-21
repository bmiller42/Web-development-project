class Reference < ActiveRecord::Base
    require 'uri'    
    before_validation :add
    validates :URL, presence: true#, if: [:URL =~ /((([A-Za-z]{3,9}:(?:\/\/)?)(?:[-;:&=\+\$,\w]+@)?[A-Za-z0-9.-]+|(?:www.|[-;:&=\+\$,\w]+@)[A-Za-z0-9.-]+)((?:\/[\+~%\/.\w-_]*)?\??(?:[-\+=&;%@.\w_]*)#?(?:[\w]*))?)/]
    validates_format_of :URL, :with => /(http|https):\/\/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(:[0-9]{1,5})?(\/.*)?/, :on => :create
    validates :topic, presence: true
    validates :annotation, presence: true
    
    def add
        if :URL =~ /^(http|https):\/\/.*/
            
        else
            url = :URL.to_s
            self.URL = :"http://#{self.URL}"            
        end
        @url = :URL
    end

end

