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

Suspension_Coil <- read.csv(file='/Users/jordanbowman/Desktop/MechaCar_Statistical_Analysis/Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

#stat summary with summarize()

total_summary <- Suspension_Coil %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI), .groups = 'keep')

# stat summary with group_by()

lot_summary <- Suspension_Coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI),Median = median(PSI), Variance = var(PSI), SD = sd(PSI) , .groups = 'keep') 

### Deliverable 3: T-Tests on Suspension Coils ###

# t-test for all the lots, pop mu = 1500 psi

t.test(Suspension_Coil$PSI,mu=mean(Suspension_Coil$PSI))

# t-test for lot 1

t.test(subset(Suspension_Coil$PSI,Suspension_Coil$Manufacturing_Lot == "Lot1"),mu=mean(Suspension_Coil$PSI))

# t-test for lot 2

t.test(subset(Suspension_Coil$PSI,Suspension_Coil$Manufacturing_Lot == "Lot2"),mu=mean(Suspension_Coil$PSI))

# t-test for lot 3

t.test(subset(Suspension_Coil$PSI,Suspension_Coil$Manufacturing_Lot == "Lot3"),mu=mean(Suspension_Coil$PSI))

