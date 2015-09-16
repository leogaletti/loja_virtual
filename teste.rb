# encoding: utf-8

require File.expand_path("lib/classLivro")
require File.expand_path("lib/classBiblioteca")

biblioteca = Biblioteca.new

joanaDark = Livro.new "Joana Dark", "12345", 200, 60.9, :literatura
malucoDoido = Livro.new "Malucou", "67890", 10, 5.0, :doidera

biblioteca.adiciona joanaDark
biblioteca.adiciona malucoDoido

for categoria, livros in biblioteca.livros do
  p categoria

  for livro in livros do
    p livro.valor
  end
end
