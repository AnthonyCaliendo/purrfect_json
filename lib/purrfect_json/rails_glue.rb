Mime::Type.register 'text/cats', :cats
ActiveRecord::Base.send :include, PurrfectJson