server_config = YAML.load_file("#{Rails.root}/config/payment_processing.yml")[Rails.env].symbolize_keys!

PAYMENT_SERVER_CONFIG = server_config[:url]
GREENPESO_ENDPOINT = server_config[:greenpeso_url]
CURRENT_DEPLOYED_HOST = server_config[:deployed_host]