class Term
  @@term_list = []
  define_method(:initialize) do |word, definition|
    @word = [word]
    @definition = [definition]
    @id = @@term_list.length().+(1)
  end
  define_method(:word) do
    @word.join()
  end
  define_method(:definition) do
    @definition.join()
  end
  define_singleton_method(:all) do
    @@term_list
  end
  define_method(:save) do
    @@term_list.push(self)
  end
  define_method(:id) do
    @id
  end
  define_singleton_method(:search) do |search_word|
       found_definition = nil
    @@term_list.each() do |word|
      if word.word() == search_word
        found_definition = word
      end
    end
    found_definition
  end
  define_singleton_method(:find) do |definition|
    found_word = nil
    @@term_list.each() do |word|
     if word.id().eql?(definition.to_i())
        found_word = word

      end
    end
    found_word
  end
end
