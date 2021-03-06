# -*- ruby -*-
#--
# Copyright 2008 Danny Coates, Ashkan Farhadtouski
# All rights reserved.
# See LICENSE for permissions.
#++
# AUTOGENERATED ComplexType

module HealthVault
  module WCData
  module Thing
  module Medication
  
      class Prescription < ComplexType
        
     
        
        
       
        #<b>REQUIRED</b>
        #<b>summary</b>: The person who prescribed this medication.
#<em>value</em> is a HealthVault::WCData::Thing::Types::Person
        def prescribed_by=(value)
          @children['prescribed-by'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Thing::Types::Person
        def prescribed_by
          return @children['prescribed-by'][:value]
        end
       
     
        
        
       
        
        #<b>summary</b>: Date medication was prescribed.
#<em>value</em> is a HealthVault::WCData::Dates::Approxdatetime
        def date_prescribed=(value)
          @children['date-prescribed'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Dates::Approxdatetime
        def date_prescribed
          return @children['date-prescribed'][:value]
        end
       
     
        
        
       
        
        #<b>summary</b>: Amount of medication prescribed
#<em>value</em> is a HealthVault::WCData::Thing::Types::Generalmeasurement
        def amount_prescribed=(value)
          @children['amount-prescribed'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Thing::Types::Generalmeasurement
        def amount_prescribed
          return @children['amount-prescribed'][:value]
        end
       
     
        
        
       
        
        #<b>summary</b>: Whether a substitution is permitted.
#<b>remarks</b>: Example: Dispense as written, substitution allowed
#<b>preferred-vocabulary</b>: medication-substitution
#<em>value</em> is a HealthVault::WCData::Thing::Types::Codablevalue
        def substitution=(value)
          @children['substitution'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Thing::Types::Codablevalue
        def substitution
          return @children['substitution'][:value]
        end
       
     
        
        
       
        
        #<b>summary</b>: Number of medication refills.
#<em>value</em> is a String
        def refills=(value)
          @children['refills'][:value] = value
        end
        
        #<b>returns</b>: a String
        def refills
          return @children['refills'][:value]
        end
       
     
        
        
       
        
        #<b>summary</b>: Number of days supply of medication.
#<em>value</em> is a String
        def days_supply=(value)
          @children['days-supply'][:value] = value
        end
        
        #<b>returns</b>: a String
        def days_supply
          return @children['days-supply'][:value]
        end
       
     
        
        
       
        
        #<b>summary</b>: Date the prescription expires.
#<em>value</em> is a HealthVault::WCData::Dates::Date
        def prescription_expiration=(value)
          @children['prescription-expiration'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Dates::Date
        def prescription_expiration
          return @children['prescription-expiration'][:value]
        end
       
     
        
        
       
        
        #<b>summary</b>: Medication instructions.
#<em>value</em> is a HealthVault::WCData::Thing::Types::Codablevalue
        def instructions=(value)
          @children['instructions'][:value] = value
        end
        
        #<b>returns</b>: a HealthVault::WCData::Thing::Types::Codablevalue
        def instructions
          return @children['instructions'][:value]
        end
       
  
      
        def initialize
          super
          self.tag_name = 'prescription'
        
          
          @children['prescribed-by'] = {:name => 'prescribed-by', :class => HealthVault::WCData::Thing::Types::Person, :value => nil, :min => 1, :max => 1, :order => 1, :place => :element, :choice => 0 }
            
          @children['prescribed-by'][:value] = HealthVault::WCData::Thing::Types::Person.new
            
          
        
          
          @children['date-prescribed'] = {:name => 'date-prescribed', :class => HealthVault::WCData::Dates::Approxdatetime, :value => nil, :min => 0, :max => 1, :order => 2, :place => :element, :choice => 0 }
            
          
        
          
          @children['amount-prescribed'] = {:name => 'amount-prescribed', :class => HealthVault::WCData::Thing::Types::Generalmeasurement, :value => nil, :min => 0, :max => 1, :order => 3, :place => :element, :choice => 0 }
            
          
        
          
          @children['substitution'] = {:name => 'substitution', :class => HealthVault::WCData::Thing::Types::Codablevalue, :value => nil, :min => 0, :max => 1, :order => 4, :place => :element, :choice => 0 }
            
          
        
          
          @children['refills'] = {:name => 'refills', :class => String, :value => nil, :min => 0, :max => 1, :order => 5, :place => :element, :choice => 0 }
            
          
        
          
          @children['days-supply'] = {:name => 'days-supply', :class => String, :value => nil, :min => 0, :max => 1, :order => 6, :place => :element, :choice => 0 }
            
          
        
          
          @children['prescription-expiration'] = {:name => 'prescription-expiration', :class => HealthVault::WCData::Dates::Date, :value => nil, :min => 0, :max => 1, :order => 7, :place => :element, :choice => 0 }
            
          
        
          
          @children['instructions'] = {:name => 'instructions', :class => HealthVault::WCData::Thing::Types::Codablevalue, :value => nil, :min => 0, :max => 1, :order => 8, :place => :element, :choice => 0 }
            
          
        
        end
      end
  end
  end
  
  end
end
