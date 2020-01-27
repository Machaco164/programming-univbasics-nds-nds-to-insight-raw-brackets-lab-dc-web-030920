
$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pry'

def directors_totals(nds)
  new_hash = {}
  counter = 0 
  while counter < nds.length do
  director_name = nds[counter][:name]
    inner_index = 0
    total= 0
    while inner_index < nds[counter][:movies].length do
    total += nds[counter][:movies][inner_index][:worldwide_gross]
    inner_index += 1
  end
  newhash[director_name] = total
  counter += 1 
end
end