library(gapminder)

gap = gapminder

str(gap)
colnames(gap)
dim(gap)
nrow(gap)
ncol(gap)
summary(gap)

sum(as.numeric(gap$pop))
mean(gap$gdpPercap)

numbers = c(1, 5, 10, 15, 3, 5, 67)

numbers
numbers >= 10

head(gap)
tail(gap)

asia = gap[gap$continent == 'Asia',]

gap[1000:1005,]
unique(asia$continent)
unique(asia$continent)

#text[text %in% c('a', 'cheesecake')]

countries = gap[gap$country %in% c('China', 'Canada'),]
mean(countries$gdpPercap)

for (country in unique(gap$country)) {

    data = gap[gap$country == country,]

    data$gdp = data$pop * data$gdpPercap / 1e9
    print(country)
    print(mean(data$gdp))
}



