# data structures
# make a data frame

cats <- data.frame(coat = c("calico", "black", "tabby"),
                   weight = c(2.1, 5.0, 3.2),
                   likes_string = c(1, 0, 1))

write.csv(x = cats, file = "data/feline_data.csv")

cats

cats$weight

cats$coat

cats$weight + 2

cats$weight + cats$coat
class(cats$weight)
class(cats$coat)

str(cats)
str(cats$coat)
cats$coat

# change order of factors
cats$coats_reorder <- factor(x = cats$coat, 
                             levels = c("tabby", "calico", "black"),
                             ordered = TRUE)

str(cats$coats_reorder)
levels(cats$coats_reorder)


# exploring data frames

#read in data
gap <- read.csv(file = "data/gapminder-FiveYearData.csv")
cats <- read.csv(file= "data/feline_data.csv")


head(gap)

str(gap)

nrow(gap)
ncol(gap)
dim(gap)
colnames(gap)

# subsetting data

x <- c(5.4, 6.2, 7.1, 4.8, 7.5)
names(x) <- c("a", "b", "c", "d", "e")
x

x[1]
x[3]

x[c(1 , 3)] 

#slices
x[1:4]

x[-2]

x[-(2:4)]

# subsetting gapminder data

head(gap[1])

head(gap["pop"])

head(gap[, 1]) #ncol

gap[3, ] #nrow
gap[138, ]

albania <- gap[13:24, 3:6]
albania

afghanistan <- gap[1:12, ]
afghanistan$gdp <- afghanistan$gdpPercap * afghanistan$pop
write.csv(x = afghanistan, file = "results/afghanistan.csv")

which(gap$country == "Italy")
