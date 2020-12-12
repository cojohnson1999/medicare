# Cody Johnson, R Script Changes to Paper 2 Dataset

# Original dataset read in by:
# premiums <- read.csv("pre-existing-conditions-by-state.csv")

# R Script changed to more column-based format in new table.
# premiums_melt <- premiums %>% gather(key = age, value = preexisting, 
# X0_to_17_preexisting:X55_to_64_preexisting)

# Changed format of "preexisting" column to be numeric.
# premiums_melt$preexisting <- as.numeric(as.character(premiums_melt$preexisting))

# Mutated new table to include a count variable as a new primary key.
# premiums_melt <- mutate(premiums_melt, cnt = c(1:n()))

# Calculated the means for each age group by using the new count variable.
# premiums_melt$means_by_age <- with(premiums_melt, ave(preexisting, 
# findInterval(cnt, c(1, 51, 102, 153,  204, 255, 306))))

# Changed the data types of insurance_cost_2019 and insurance_cost_preexisting_2019
# from characters to numeric data.
# premiums$insurance_cost_2019 <- as.numeric(as.character(premiums$insurance_cost_2019))
# premiums$insurance_cost_preexisting_2019 <- 
#   as.numeric(as.character(premiums$insurance_cost_preexisting_2019))