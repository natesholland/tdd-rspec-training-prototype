require "mhem/version"

module Mhem
  class << self

    SHIFT = 3
    ALPHABET = ('a'..'z').to_a.join

    def encode(string)
      i = SHIFT % ALPHABET.size
      @decrypt = ALPHABET
      @encrypt = ALPHABET[i..-1] + ALPHABET[0...i]
      string.tr(@decrypt, @encrypt)
    end

    def decode(string)
      i = SHIFT % ALPHABET.size
      @decrypt = ALPHABET
      @encrypt = ALPHABET[i..-1] + ALPHABET[0...i]
      string.tr(@encrypt, @decrypt)
    end
  end

end
