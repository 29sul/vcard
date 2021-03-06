module Vcard
  # This is a way for an object to have multiple ways of being enumerated via
  # argument to it's #each() method. An Enumerator mixes in Enumerable, so the
  # standard APIs such as Enumerable#map(), Enumerable#to_a(), and
  # Enumerable#find_all() can be used on it.
  #
  # TODO since 1.8, this is part of the standard library, I should rewrite vPim
  # so this can be removed.
  class Enumerator
    include Enumerable

    def initialize(obj, *args)
      @obj = obj
      @args = args
    end

    def each(&block)
      @obj.each(*@args, &block)
    end
  end
end
