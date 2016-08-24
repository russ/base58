module Base58::Exceptions
  class InvalidString < Exception
    def initialize(string)
      super "Invalid base58 string: `#{string}`"
    end
  end
end
