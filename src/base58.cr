require "./base58/*"

module Base58
  extend self

  ALPHABET = "123456789abcdefghijkmnopqrstuvwxyzABCDEFGHJKLMNPQRSTUVWXYZ"
  BASE = ALPHABET.size

  def encode(int_val : Number) : String
    base58_val = ""
    while int_val >= BASE
      mod = int_val % BASE
      base58_val = ALPHABET[mod, 1] + base58_val
      int_val = (int_val - mod) / BASE
    end
    ALPHABET[int_val, 1] + base58_val
  end

  def decode(base58_val : String) : Number
    int_val = 0_u32
    base58_val.reverse.split(//).each_with_index do |char, index|
      char_index = ALPHABET.index(char)
      raise ArgumentError.new("Value passed not a valid Base58 String.") if char_index.nil?
      int_val += (char_index) * (BASE ** (index))
    end
    int_val
  end
end
