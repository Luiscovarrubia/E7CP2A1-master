

#Parte 1
nombres = ["Violeta", "Andino", "Clemente", "Javiera", "Paula", "Pia", "Ray"]
a=nombres.select{|i| i.length < 5 }
print a #==>["Pia", "Ray"]

#Parte 2
nombres = ["Violeta", "Andino", "Clemente", "Javiera", "Paula", "Pia", "Ray"]
a=nombres.map{|i| i.downcase }
print a #==>["violeta", "andino", "clemente", "javiera", "paula", "pia", "ray"]

#Parte 3
nombres = ["Violeta", "Andino", "Clemente", "Javiera", "Paula", "Pia", "Ray"]
a=nombres.select{|i| i.chars.first=='P' }
print a #==> ["Paula", "Pia"]

#Parte 4
nombres = ["Violeta", "Andino", "Clemente", "Javiera", "Paula", "Pia", "Ray"]
a=nombres.map{|i| i.length }
print a #==> [7, 6, 8, 7, 5, 3, 3]

nombres = ["Violeta", "Andino", "Clemente", "Javiera", "Paula", "Pia", "Ray"]

a=nombres.map{|i|i.downcase.gsub(/[aeiou]/,"").capitalize}
print a #==> ["Vlt", "Ndn", "Clmnt", "Jvr", "Pl", "P", "Ry"]