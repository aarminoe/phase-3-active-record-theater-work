require 'pry'

class Role < ActiveRecord::Base
    has_many :auditions

    def lead
        if self.hired
            self.hired.first
        else
            'no actor has been hired for this role'
        end
    end

    binding.pry
end