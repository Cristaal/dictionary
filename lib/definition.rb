class Definition
  define_method(:initialize) do |definition, language|
    @definition = [definition]
    @language = [language]
  end
  define_method(:definition) do
    @definition.join()
  end
  define_method(:language) do
    @language.join()
  end
  define_method(:saved) do
    self.save()
  end
end
