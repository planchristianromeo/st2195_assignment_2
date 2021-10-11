library(rvest)
library(dplyr)


link = "https://en.wikipedia.org/wiki/Comma-separated_values"
  
page = read_html(link)

r_table_1 = page %>% html_node("table.wikitable") %>%
  html_table()

View(r_table_1)
str(r_table_1)
typeof(r_table_1)


write.csv(x = r_table_1,'C:/Users/chris/repositories/st2195_assignment_2/r_csv.csv',row.names = FALSE)

table_1 <- read.csv(file = 'C:/Users/chris/repositories/st2195_assignment_2/r_csv.csv')
View(table_1)



#-----------------------------------
# Another option - using xpath

r_table_2 = page %>% 
  html_nodes(xpath = '//*[@id="mw-content-text"]/div[1]/table[2]/tbody') %>%
  html_table()

r_table_2

View(r_table_2)
str(r_table_2)
typeof(r_table_2)

write.csv(x = r_table_2,'C:/Users/chris/repositories/st2195_assignment_2/r_csv_2.csv',row.names = FALSE)

table_2 <- read.csv(file = 'C:/Users/chris/repositories/st2195_assignment_2/r_csv_2.csv')
View(table_2)

