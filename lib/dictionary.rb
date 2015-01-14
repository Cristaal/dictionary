class Term
  define_method(:initialize) do |word, definition|
    @word = word
    @definition = definition
  end
  define_method(:word) do
    @word
  end
  define_method(:definition) do
    @definition
  end
end
