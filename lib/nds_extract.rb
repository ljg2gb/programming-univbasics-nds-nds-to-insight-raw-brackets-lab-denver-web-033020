require 'pp'
require 'pry'
$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

pp directors_database

# Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
# Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  # Be sure to return the result at the end!
  

def directors_totals(nds)
  #binding.pry
  # 1. first Array - contains data on all the directors movies, each broken down into hashes based on director
  result = {}
  total_value_for_director = 0
  row_index = 0
  while row_index < nds.length do
    director_name = nds[row_index][:name]
    result[director_name] = 0 
    
    # 2. first Hash - contains data of a director, broken down into arrays of types of data
    column_index = 0
    column_len = nds[row_index][:movies].length
    while column_index < column_len do
      result[director_name] += nds[row_index][:movies][column_index][:worldwide_gross]
      column_index += 1

      # # 3. inner Array -contains specific types of data for each director's movies
      # inner_len = nds[row_index][:movies].length
      # inner_index = 0
      # while inner_index < inner_len do
      
      
      #   #4. inner Hash -contains key-value pairs of data
      #   inner_inner_len = nds[row_index][:movies][inner_index].length
      #   inner_inner_index = 0
      #   while inner_inner_index < inner_inner_len do
          
      #     #THE IMPORTANT STUFF
      #     value_for_each_movie = nds[row_index][:movies][inner_index][:worldwide_gross]
      #     total_value_for_director += value_for_each_movie
        
      #     inner_inner_index += 1
      #   end
      #   result[director_name] = total_value_for_director
        
      #   inner_index += 1
      # end
      # column_index += 1
    end
    row_index += 1
  end
  return result
end