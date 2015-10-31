=begin
Method: diccionary_sort.
Escribe un programa llamado diccionary_sort que pida al usuario capturar las 
palabras que quiera (una palabra por línea) y para finalizar la captura tenga que
presionar "enter".

Deberás utilizar un array para guardar las palabras.

Una vez que el usuario presiona "enter" el programa deberá arrojar la lista de 
palabras en orden alfabético.
=end

def diccionary_sort()
   #'flag' variable is initialized
   flag = true
   #'count' variable is initialized
   count = 0
   #'list' Array is initialized
   list = []
   #loop to get words from user
   while flag 
      #it evaluates to save words
      if count == 0
         puts "Escribe una palabra: "
         word = gets.chomp
         #it validates if the user captures a number or an empty string
         if word != "" and (word.to_i.to_s != word.to_s)
            list << word
            count += 1
         end
      else
         puts "Escribe otra palabra(o presiona 'enter' para finalizar):   "
         word = gets.chomp
         #it validates if the user captures a number or an empty string
         if word != "" and (word.to_i.to_s != word.to_s)
            list << word
            count += 1
         end
      end
      #loop is breaked
      if word == ""
         flag = false
      end
   end
   #it counts words in Array
   puts "Felicidades! Tu diccionario tiene #{count} palabras:"
   #result, sorted Array with words 
   puts list.sort_by { |word| word.upcase}
end

diccionary_sort()