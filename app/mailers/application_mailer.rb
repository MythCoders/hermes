# frozen_string_literal: true

class ApplicationMailer < ActionMailer::Base
  DEFAULT_FROM = 'Hermes <hermes@mythcoders.com>'
  default from: DEFAULT_FROM
  layout 'mailer'
  # headers 'X-SES-CONFIGURATION-SET': 'Hermes'
end
