# encoding: utf-8
class Const
  BASE_URL = YAML.load_file('config.yml')['base_url']
end