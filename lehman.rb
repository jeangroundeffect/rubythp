# rentrer un array de longueur size = n

def trader(indices)
n = indices.size

# calcul de l'écart le plus favorable en partant du premier élément, puis le 2ème, puis le 3ème..
# permet de prendre en compte le "temps" pas de short selling possible
# c'est à dire pas possible de vendre puis d'acheter

# l'idée avec [5,10,2,8] comme exemple
# on commence avec le 1er élément : 5
# on fait 5-10 = -5, 5-2 = 3, 5-8 = -3 --> 3 est le meilleur arbitrage
# on réitère le procédé, cette fois en partant du 2ème élément
# on fait 2-10 = -8, 8-10 = -2 --> meilleur arbitrage = -2
# puis en partant du 3ème élément : 8-2 = 6 --> meilleur arbitrage = 6
# pas d'arbitrage à faire pour le dernier élément : ou alors arbitrage nul, acheter et revendre au meme prix le meme jour...

# on fait la somme des arbitrages : max(3, -2, 6) = 6



# introduction d'une grande boucle pour itérer le processus n-1 fois en partant de chaque élément i du tableau (sauf le dernier)
# création tableau des arbitrages, qui recense toutes les combinaisons possibles en prenant en compte le temps ie pas de vente suivie d'achat

arbitrages = []
numerotation = []

i=0
while i < n-1 do


  t = 1
  # t va s'incrèmenter de 1 à n-i, pour ne pas dépasser

  while t < n-i do
    s = indices[i+t]-indices[i]
    # arbitrage ajouté au tableau des arbitrages possibles
    arbitrages << s
    # index de cet arbitrage ajouté au tableau des index
    index = "achat #{i+1} ème jour et vente #{i+1+t} ème jour pour un arbitrage achat #{indices[i]}$ et vente #{indices[i+t]}$ = #{s}$"
    numerotation << index
    t = t+1
  end

i = i +1
end

# les tableaux arbitrages et numerotation sont en bijection : chaque arbitrage a un index ayant la meme valeur que l'index associé dans le tableau numerotation

# on trouve le maximum du tableau arbitrages = profit maximal
maximum = arbitrages.max

# on trouve l'index "indexmax" de ce profit maximal dans le tableau arbitrage
indexmax = arbitrages.index(maximum)

# l'index indexmax a une valeur similaire à l'index associé dans le tableau numerotation
puts numerotation[indexmax]

end

puts trader([17,3,6,9,15,8,6,1,10])





  # max va prendre le meilleur des maximum pour chaque portion de tableau
  # ex : [a,b,c,d]
  # m1 = max [(a-b), (a-c), (a-d)
  max = 0
