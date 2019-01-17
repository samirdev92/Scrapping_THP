require_relative '../lib/trader'

describe "the hello function" do
  it "says hello" do
    expect(hello).to eq("Hello world!")
  end
end



Les lignes de base d'un programme de test en Rspec sont :

require_relative '../lib/hello' dit juste à notre programme "hey, je vais vouloir accéder au contenu du fichier hello.rb qui est dans le dossier lib qui se trouve dans le dossier parent (d'où le ../) de là où tu es".
require_relative '***' pour faire appel au programme testé (sinon ses méthodes ne sont pas accessibles par le programme de test

describe "the hello function" do (...) end permet d'ouvrir un premier groupe de tests que l'on a appelé "the hello function". Comme son nom l'indique, ce groupe de tests automatiques va se focaliser sur ce que doit faire la fonction "hello".
describe "***" do (...) end pour introduire un groupe de test, généralement axé sur une méthode donnée

it "says hello" do (...) end permet d'ouvrir un premier test au sein du groupe de test "the hello function". Nous avons intitulé ce test "says hello" car c'est précisément ce comportement qu'on va tester sur la fonction hello.
it "***" do (...) end pour introduire un test précis au sein de ce groupe, généralement axé sur une fonctionnalité donnée

expect(hello).to eq("Hello world!") est le cœur même du test ! On a indiqué via expect(..) qu'on va exécuter la fonction hello. Puis le .to eq(..) permet de spécifier le résultat attendu : un string "Hello world!"
expect(lmethode_ou_variable_ou_autre).to eq(resultat_attendu) pour faire le test qu'une méthode ou variable ou autre donne le résultat attendu







