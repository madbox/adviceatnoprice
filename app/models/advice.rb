class Advice < ActiveRecord::Base
  def after_create
    Notifier.deliver_simple_advice( self )
  end
end
