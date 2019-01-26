#enter a comment
#comment are useful for my code to be more easily read by me and my friends

#intiate or create new variable called cats
cats <- data.frame(coat = c("calico", "black", "tabby"),
                   weight = c(2.1, 5.0, 3.2),
                   likes_string = c(1, 0, 1))

#write cats to new file called feline-data.csv
write.csv(x = cats, file = "data/feline-data.csv", row.names = FALSE)

#Look at specific columns
cats$weight
cats$coat

#say we discovered that the scale weights two kgs light:
cats$weight +2

#Produce pretty sentences
paste("My cat is", cats$coat)

#add weight and coat columns
cats$weight + cats$coat

#add weight column to each other 
cats$weight + cats$weight

#examine type of weight column within cats
typeof(cats$weight)

typeof(3.14)
typeof(1L)
typeof("L1")
typeof(1+1i)
typeof(TRUE)
typeof("banana")

#create new vector called my_vector
my_vector <- vector(length = 3)
my_vector

#create new vector with chracter dat types
another_vector <- vector(mode = 'character',length=3)
another_vector

#create string of characters within vector
str(another_vector)
str(my_vector)

str(cats)
