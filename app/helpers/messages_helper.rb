# frozen_string_literal: true

module MessagesHelper
  def activity_icon(key)
    case key
    when 'received'
      'satellite-dish'
    when 'rerouted'
      'traffic-light'
    when 'failed'
      'minus-octagon'
    when 'complaint'
      'exclamation-triangle'
    when 'error'
      'dumpster-fire'
    when 'processed'
      'badge-check'
    when 'opened'
      'envelope-open-text'
    when 'clicked'
      'link'
    when 'delivered'
      'inbox'
    when 'sent'
      'paper-plane'
    else
      'info-circle'
    end
  end

  def activity_message(key)
    case key
    when 'received'
      'API request recieved'
    when 'rerouted'
      'Rerouted to client owner'
    when 'processed'
      'Forwarded to AWS'
    when 'opened'
      'Message opened'
    when 'clicked'
      'Link clicked'
    else
      key
    end
  end

  def activity_color(key)
    case key
    when 'rerouted', 'complaint'
      'warning'
    when 'failed', 'error'
      'danger'
    when 'sent', 'delivered'
      'success'
    else
      'primary'
    end
  end

  def email_array_to_string(list)
    list.map(&:email).join(', ')
  end
end
