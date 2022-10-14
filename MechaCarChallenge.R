## Deliverable 1: Linear Regression to Predict MPG ##
# load package

library(dplyr)

# import and read csv as a dataframe

MechaCar_mpg <- read.csv(file='/Users/jordanbowman/Desktop/MechaCar_Statistical_Analysis/MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
head(MechaCar_mpg)

# linear regression model

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD ,data=MechaCar_mpg)

# summary statistics

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD ,data=MechaCar_mpg))

### Deliverable 2: Create Visualizations for Trip Analysis ###

# import csv and read as a table

mecha_coil <- read.csv(file='/Users/jordanbowman/Desktop/MechaCar_Statistical_Analysis/Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

#stat summary with summarize()

total_summary <- mecha_coil %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI), .groups = 'keep')

# stat summary with group_by()

lot_summary <- mecha_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI),Median = median(PSI), Variance = var(PSI), SD = sd(PSI) , .groups = 'keep') 

### Deliverable 3: T-Tests on Suspension Coils ###

# use t.test() to determine if the PSI across ALL lots is statistically different from the pop. mean of 1,500 PSI.
t.test(mecha_coil$PSI,mu=1500)

# use t.test() function 3 more times with subset() to determine if PSI for each manufacturing lot is statistically different from the pop. mean of 1,500 PSI

lot1 <- subset(mecha_coil, Manufacturing_Lot=="Lot1")
lot2 <- subset(mecha_coil, Manufacturing_Lot=="Lot2")
lot3 <- subset(mecha_coil, Manufacturing_Lot=="Lot3")

t.test(lot1$PSI,mu=1500)
t.test(lot2$PSI,mu=1500)
t.test(lot3$PSI,mu=1500)
