
#Parte 1
a = [1, 2, 3, 9, 1, 4, 5, 2, 3, 6, 6]
puts a.map{|i|i+1} # ==>[2, 3, 4, 10, 2, 5, 6, 3, 4, 7, 7]

#Parte 2
a = [1, 2, 3, 9, 1, 4, 5, 2, 3, 6, 6]
print a.map{|i|i.to_f}  #==>[1.0, 2.0, 3.0, 9.0, 1.0, 4.0, 5.0, 2.0, 3.0, 6.0, 6.0]

#Parte 3
a = [1, 2, 3, 9, 1, 4, 5, 2, 3, 6, 6]
print a.map{|i|i.to_s}  #==>["1", "2", "3", "9", "1", "4", "5", "2", "3", "6", "6"]

#Parte 4
a = [1, 2, 3, 9, 1, 4, 5, 2, 3, 6, 6]
print a.reject{|i|i < 5 } #==>[9, 5, 6, 6]

#Parte 5
a = [1, 2, 3, 9, 1, 4, 5, 2, 3, 6, 6]
print a.select{|i|i < 5 } #==>[1, 2, 3, 1, 4, 2, 3]

#Parte 6
a = [1, 2, 3, 9, 1, 4, 5, 2, 3, 6, 6]
print a.inject{|sum,i|sum += i } #==>42

#Parte 7
a = [1, 2, 3, 9, 1, 4, 5, 2, 3, 6, 6]
b=a.group_by{|i| i%2}
print b #==>{1=>[1, 3, 9, 1, 5, 3], 0=>[2, 4, 2, 6, 6]}

#Parte 8
a = [1, 2, 3, 9, 1, 4, 5, 2, 3, 6, 6]
b=a.group_by{|i| i<6}
print b #==>{true=>[1, 2, 3, 1, 4, 5, 2, 3], false=>[9, 6, 6]}
