def cesar(text, decalage)
  result = []
  tab = text.split('')
  tab.each do |element|
    t = element.ord

    # distinction caractère majuscule et caractère minuscule debordement sur caractères spéciaux qui ne sont pas des lettres

    # Majuscules avec debordement
    if t >= 65 && t <=90 && t + decalage > 90 then t = t+decalage - 26

      # minuscules avec debordement
    elsif t >=97 && t <= 122 && t + decalage > 122 then t = t+decalage - 26

      # si pas de débordemebt
    else t = t + decalage
    end

    crypt = t.chr
    result << crypt
  end

  result.each do |newelement|
    puts newelement
  end

end


cesar("xyz",2)
