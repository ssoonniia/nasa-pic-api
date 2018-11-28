require 'jwt'

class Auth
  ALGORITHM = 'HS256'

  def self.encrypt(payload)
    JWT.encode(payload, secret_key, ALGORITHM)
  end

  def self.decode(token)
    JWT.decode(token, secret_key, true, { algorithm: ALGORITHM }).first
  end

  def self.secret_key
    '19604df804b41d176d4e40370a0bc3a63e5362023637a92858391da5694bd76feb851e82480dfe1f333b88148bbf6c917e78dece5f083b141cf7c0f1af97d234'
  end
end
