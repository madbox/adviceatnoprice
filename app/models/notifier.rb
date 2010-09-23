class Notifier < ActionMailer::Base
  

  def simple_advice( advice, sent_at = Time.now)
    subject    'simple_advice_subject'
    recipients advice.email
    from       I18n.t('sender_name')
    sent_on    sent_at
    
    body       :greeting => 'Hi,'
  end

end
