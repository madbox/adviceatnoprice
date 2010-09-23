# -*- coding: utf-8 -*-
class Notifier < ActionMailer::Base
  

  def simple_advice( advice, sent_at = Time.now)
    subject    'Бесенный Совет'
    recipients advice.email
    from       "advisor@#{MAIN_DOMAIN}"
    sent_on    sent_at
    
    body       :greeting => 'Hi,'
  end

end
