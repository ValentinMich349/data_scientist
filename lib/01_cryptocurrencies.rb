require_relative("./data.rb")
def hash_crypto_montants
hash_crypto_montants = Hash[name_crypto.zip(price_crypto)]
return hash_crypto_montants
end

def biggest(list) #fonction N°1 - Trouve le plus grand montant
  highest_crypto_montants = list.max_by {|key, value| value.to_f}
    return highest_crypto_montants
  end 
  
  def smallest(list) #fonction N°2 - Trouve le plus petit montant
    smallest_crypto_montants = list.min_by {|key, value| value.to_f}
    return smallest_crypto_montants
  end 
  
def intro 
    puts ""
    puts "-------------------------------------------------------------------------------------"
    puts ""
    puts "Tapes le nombre correspondant à l'information qui t'intéresse :"
    puts "1/ Connaitre la crypto avec la plus grande valeur."
    puts "2/ Connaitre la crypto avec la plus petite valeur."
    puts "5/ Quitter le programme."
    puts ""
    print "> "
    user_choice = gets.chomp.to_i
    return user_choice
  end 
  
  # MAIN 
  
  def perform # MAIN -- Affiche les informations demandées
    puts ""
    puts "---- BIENVENUE DANS LE PROGRAMMES D'ANALYSES DES HANDLE ----"
    user_choice = 0
    check = 0
  
    while check == 0
      puts ""
      user_choice = intro
      puts ""
      if user_choice == 1
       puts "la crypto la plus elevé est #{biggest(hash_crypto_montants)}"
      else 
        if user_choice == 2
          puts "la crypto la plus faible est #{smallest(hash_crypto_montants)}"
        else 
              if user_choice == 5
                check = 1
                      else
                      puts "Merci d'entrer un nombre entre 1 et 2."
                  end
                end
      end
    end
    puts ""
    puts "---- A BIENTOT ----"
    
  end
  
  perform