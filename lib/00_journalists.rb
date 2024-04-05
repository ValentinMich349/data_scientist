require_relative("./data.rb")

  def compter_journalistes(journalistes_list)
    nombre_de_journalistes = journalistes_list.length 
    return nombre_de_journalistes
  end
  

  def journaliste_le_plus_court(journalistes_list)
     journaliste_le_plus_court = journalistes_list.min_by { |journaliste| journaliste.length } 
    return journaliste_le_plus_court
  end

  def journaliste_le_plus_long(journalistes_list,number_journalists)  
    length_handle = 0
    longuest_handle = 0
    number_journalists.times do |i|
      length_handle = journalists[i].length()
      if length_handle > longuest_handle
        longuest_handle = length_handle
      end
    end
    return longuest_handle
  end
   

  def nombre_journalistes_avec_5_caracteres(journalistes_list)
    
    nombre_journalistes = journalistes_list.count { |journaliste| journaliste.length - 1 == 5 } # -1 pour exclure le caractère "@"
    return nombre_journalistes
end
  


  def nombre_journalistes_majuscule(journalistes_list)
   
    nombre_journalistes = journalistes_list.count { |journaliste| journaliste =~ /@([A-Z])\w+/ }
    return nombre_journalistes
  end
  
  

  def trier_journalistes_par_ordre_alphabetique(journalistes_list)
   journalistes_tries_alphabet = journalistes_list.sort  
    return journalistes_tries_alphabet
  end
  
  
  def trier_journalistes_par_taille(journalistes_list)

    journalistes_tries = journalistes_list.sort_by { |journaliste| journaliste.length }
    return journalistes_tries
  end
  

  def trouver_position_dans_array(journaliste_recherche, journalistes_list)
    position = journalistes_list.index(journaliste_recherche)
    
      return position + 1   #+1 car commence de 0
    

    end
 
  

  def repartition_par_taille(journalistes_list)
    repartition = Hash.new(0)
    journalistes_list.each { |journaliste| repartition[journaliste.length - 1] += 1 }  # -1 pour exclure le caractère "@"
    repartition.each do |taille, nombre|
      puts "#{taille + 1} caractère: #{nombre} journaliste"
    end
  end
  
  

# MISE EN FORME DU MENU

def question_1
    puts "Il y a #{compter_journalistes(journalistes_list)} journalistes dans la liste."
  end
  
  def question_2
    puts "Il s'agit de #{journaliste_le_plus_court(journalistes_list)}"
  end
  
  def question_3
    puts "Il y a #{nombre_journalistes_avec_5_caracteres(journalistes_list)}"
  end
  
  def question_4
    puts "Il y a #{nombre_journalistes_majuscule(journalistes_list)} handles qui commence par une majuscule."
  end 
  
  def question_5
    puts "Voici la liste des handles triés par ordre alphabétique : #{trier_journalistes_par_ordre_alphabetique(journalistes_list)}"
  end 
  
  def question_6
    puts "Voici la liste des handles triés par ordre longueur de handle : #{trier_journalistes_par_taille(journalistes_list)}"
  end 
  
  def question_7
    puts "Le handle se trouver en position n°#{ trouver_position_dans_array("@epenser", journalistes_list)}"
  end 
  
  def question_8 
    repartition_par_taille(journalistes_list)    
end 
  
  def intro 
    puts ""
    puts "-------------------------------------------------------------------------------------"
    puts ""
    puts "Tapes le nombre correspondant à l'information qui t'intéresse :"
    puts "1/ Connaitre le nombre de handle de la liste."
    puts "2/ Connaitre le nom du handle le plus court et sa taille."
    puts "3/ Connaitre le nombre de handle contenant 5 caractères."
    puts "4/ Connaitre le nombre de handle commençant par une majuscule."
    puts "5/ Voir la liste, ordonnée suivant l'ordre alphabétique."
    puts "6/ Voir la liste, ordonnée suivant la longueur des handle."
    puts "7/ Connaître la position du handle dans la liste."
    puts "8/ Voir le nombre de handles par taille."
    puts "9/ Quitter le programme."
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
        question_1
      else 
        if user_choice == 2
          question_2
        else 
          if user_choice == 3
            question_3
          else 
            if user_choice == 4
              question_4
            else 
              if user_choice == 5
                question_5
              else 
                if user_choice == 6
                  question_6
                  else 
                  if user_choice == 7
                    question_7
                    else 
                    if user_choice == 8
                      question_8
                      else 
                      if user_choice == 9
                        check = 1
                      else
                      puts "Merci d'entrer un nombre entre 1 et 8."
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
    puts ""
    puts "---- A BIENTOT ----"
    
  end
  
  perform