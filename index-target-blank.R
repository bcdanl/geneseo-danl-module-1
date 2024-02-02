system("quarto render")
quarto::quarto_render("index.qmd")
library(stringr)

# Read the HTML file
html_as_text <- readLines("index.html", warn = FALSE)
system(paste("rm", shQuote("index.html")))


# Replace the values
lec_no <- '01'
lec_date <- '0206'

old_content <- str_c('lec-', lec_no, '-2024-', lec_date, '.html"')
new_content <- str_c(old_content, " ", 'target="_blank"') 

html_as_text <- str_replace_all(html_as_text,
                                old_content,
                                new_content)
# Replace the values
lec_no <- '02'
lec_date <- '0213'

old_content <- str_c('lec-', lec_no, '-2024-', lec_date, '.html"')
new_content <- str_c(old_content, " ", 'target="_blank"') 

html_as_text <- str_replace_all(html_as_text,
                                old_content,
                                new_content)
# Replace the values
lec_no <- '03'
lec_date <- '0220'

old_content <- str_c('lec-', lec_no, '-2024-', lec_date, '.html"')
new_content <- str_c(old_content, " ", 'target="_blank"') 

html_as_text <- str_replace_all(html_as_text,
                                old_content,
                                new_content)
# Replace the values
lec_no <- '04'
lec_date <- '0227'

old_content <- str_c('lec-', lec_no, '-2024-', lec_date, '.html"')
new_content <- str_c(old_content, " ", 'target="_blank"') 

html_as_text <- str_replace_all(html_as_text,
                                old_content,
                                new_content)
# Replace the values
lec_no <- '05'
lec_date <- '0305'

old_content <- str_c('lec-', lec_no, '-2024-', lec_date, '.html"')
new_content <- str_c(old_content, " ", 'target="_blank"') 

html_as_text <- str_replace_all(html_as_text,
                                old_content,
                                new_content)
# Replace the values
lec_no <- '06'
lec_date <- '0312'

old_content <- str_c('lec-', lec_no, '-2024-', lec_date, '.html"')
new_content <- str_c(old_content, " ", 'target="_blank"') 

html_as_text <- str_replace_all(html_as_text,
                                old_content,
                                new_content)
# Replace the values
lec_no <- '07'
lec_date <- '0319'

old_content <- str_c('lec-', lec_no, '-2024-', lec_date, '.html"')
new_content <- str_c(old_content, " ", 'target="_blank"') 

html_as_text <- str_replace_all(html_as_text,
                                old_content,
                                new_content)

writeLines(html_as_text, 
           "index.html")

