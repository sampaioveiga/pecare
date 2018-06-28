ActionMailer::Base.raise_delivery_errors = false
ActionMailer::Base.smtp_settings = {  
	address:              '0.0.0.0',
	enable_starttls_auto: false,
}