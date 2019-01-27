#exploring the dplyr package
library(dplyr)
library(ggplot2)
gapminder <- read.csv('data/gapminder_data.csv')

#using select
str(gapminder)
gap_select <- gapminder %>% select(year,country,gdpPercap)
str(gap_select)

#using filter
gap_europe <- gapminder %>% filter(continent=="Europe") 
head(gap_europe)
str(gap_europe)

#combining select and filter
gap_select_europe <- gapminder %>% filter(continent=="Europe") %>% 
  select(year,country,gdpPercap)
str(gap_select_europe)

gap_select_africa <- gapminder %>%
  filter(continent=="Africa") %>%
  select(year,country,lifeExp)
str(gap_select_africa)

#summarizing data by groups
#by continent
gdp_byContinent <- gapminder %>%
  group_by(continent) %>%
  summarize(meanGDP = mean(gdpPercap))
gdp_byContinent

#by country
lifeExp_byCountry <- gapminder %>%
  group_by(country) %>%
  summarize(meanlifeExp = mean(lifeExp))
lifeExp_byCountry
max(lifeExp_byCountry$meanlifeExp)
min(lifeExp_byCountry$meanlifeExp)
lifeExp_byCountry %>% filter(meanlifeExp==min(meanlifeExp))

#count
gapminder %>%
  filter(year==2002) %>%
  count(continent, sort=TRUE)

#mutate
gdp_byContinent_log <- gapminder %>%
  mutate(gdp_log = log(gdpPercap)) %>%
  group_by(continent) %>%
  summarize(meanLogGDP = mean(gdp_log)) %>% 
  ggplot(aes(x = year,y = meanLogGDP,color = continent))
gdp_byContinent_log %>% print(inf) 
gdp_byContinent_log


# Finalize ----------------------------------------------------------------


