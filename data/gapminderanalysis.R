#Library software carpentry fpr ggplot
#Jan 26, 2019

gapminder <- read.csv("data/gapminder_data.csv")
head(gapminder)
str(gapminder)

library("ggplot2")

#first plot of gapminder
ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp)) + 
  geom_point()
ggplot(data = gapminder, aes(x = year, y = lifeExp)) +
  geom_point()
ggplot(data = gapminder, aes(x = year, y = lifeExp, by=country, color=continent)) +
  geom_line()

#lines and points on same graph
ggplot(data = gapminder, aes(x = year, y = lifeExp, by=country)) + 
  geom_line(aes(color=continent)) + geom_point()

#color by continent on point plot
#alpha controls translucence of points
ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp, by=country, color=continent)) + 
  geom_point(alpha = 0.5, size = 3) + 
  scale_x_log10() + 
  geom_smooth(method = "lm")

starts.with <- substr(gapminder$country, start = 1, stop = 1)
az.countries<- gapminder[starts.with %in% c("A", "Z"),]

head(az.countries)

ggplot(data = az.countries, aes(x = year, y = lifeExp, color = continent)) +
  geom_line() + facet_wrap(~ country)
