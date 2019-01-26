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

#loooking at specific valules within cat
cats[1]
cats$coat
cats[[1]]
cats["coat"]
cats[1, 1]
cats[,1]
cats[1,]

#initiate new variable age
age <- c(2,3,5)
age
cbind(cats, age)

#realized this gave me an error
#age <-c(2,3,5,12)
#age
#cbind(cats, age)

nrow(cats)
length(age)
newRow <- list("tortoiseshell",3.3, TRUE, 9)
cats <- rbind(cats, newRow)
cats

levels(cats$coat)
levels(cats$coat) <-c(levels(cats$coat), "tortoiseshell")
cats <- rbind(cats, list("tortoiseshell",3.3, TRUE, 9))

#remove row
cats[-4, ] #display with removal fof 4th row
cats[4,] #display only 4th row
na.omit(cats)
cats <- cats[-4, ]

#remove column
cats[, -4]
drop <- names(cats) %in% c("age")
drop
cats[,!drop]

cats <- rbind(cats,cats)
cats
rownames(cats) <- NULL
cats


df <- data.frame(First_name = c("Melanie"),
                 last_name = c("Adams"),
                 lucky_number = c(12),
                 stringsAsFactors = FALSE)

df <- rbind(df, list("Marie", "Curie", 238) )
coffee <- c(FALSE,TRUE)
df <-cbind(df,coffee)
df


gapminder <- read.csv("data/gapminder_data.csv")
str(gapminder)

typeof(gapminder$year)
str(gapminder$country)

length(gapminder)
typeof(gapminder)

nrow(gapminder)
ncol(gapminder)
dim(gapminder)
colnames(gapminder)

#preview top of dataset
head(gapminder)
tail(gapminder)

head(gapminder, n=100)
sample(gapminder)

#find random sample within gapminder dataset
gapminder[sample(nrow(gapminder), 5), ]
