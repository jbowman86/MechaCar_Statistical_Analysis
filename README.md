# MechaCar_Statistical_Analysis

## Main Overview 
1.	Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes.
2.	Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots.
3.	Run t-tests to determine if the manufacturing lots are statistically different from the mean population.
4.	Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. For each statistical analysis, you’ll write a summary interpretation of 

## Linear Regression to Predict MPG

The MechaCar dataset contains a sample size of 50 prototypes measuring the miles per gallon across multiple variables.  The linear regression was calculated using R in RStudio. 

### Linear Regression

R script was applied to the dataset on several variables to get the following coefficients.  

![](https://github.com/jbowman86/MechaCar_Statistical_Analysis/blob/019590fbffac223b47fa71a6e90bfc8da2d631f2/Resources/Deliv1_console.png)


### Summary of Linear Regression model

A summary of the linear regression can be displayed to determine the quality of the dataset.  In this distribution of the residuals, the dataset fits in with the normal parameters, where the absolute value of the min and max are comparable |-19.47|~|18.58| and the median -0.07 is close to zero.

![](https://github.com/jbowman86/MechaCar_Statistical_Analysis/blob/019590fbffac223b47fa71a6e90bfc8da2d631f2/Resources/Deliv1_console.png)

1.	Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
       
A 95% level of confidence was utilized; therefore, the p-value should be compared to alpha = 0.05 level of significance to verify if statistically significant.     

Coefficients:      
mpg: 0 < 0.05, statistically significant, non-random amount of variance     
vehicle length: 0 < 0.05, statistically significant, non-random amount of variance     
vehicle weight: .08 > 0.05 not statistically significant, random amount of variance     
spoiler angle: .31 > 0.05 not statistically significant, random amount of variance    
ground clearance: 0 < 0.05 statistically significant, non-random amount of variance    
AWD: .19 > 0.05 not statistically significant, random amount of variance     

In summary, vehicle length and ground clearance variables represent non-random amounts of variance in determining the mpg values.    

2. Is the slope of the linear model considered to be zero? Why or why not?    

All of the slopes of the variables are shown to be non-zero even though some are close to zero:    

Coefficients:    
vehicle length: 6.267    
vehicle weight: .001   
spoiler angle: .069   
ground clearance: 3.546   
AWD: -3.411    

The multiple linear regression formula for mpg = -.01 + 6.267(vehicle length)+.001(vehicle weight)+.069(spoiler angle)+3.546(ground clearance)-3.411(AWD), which results in a non-zero slope.

3. Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not? 
   
R-squared is .7149, which is a strong correlation for the dataset and shows the dataset is an effective dataset.  However, r-squared is not the only consideration for effectiveness.  There may be other variables not included in the dataset contributing to the variation in the mpg. 

## Summary Statistics on Suspension Coils
### Manufacturing Lot Summary

Below is the summary statistics of all of the manufacturing lots.  The mean is 1498.78 for this sample and the population mean was determined to be 1500.   


![](https://github.com/jbowman86/MechaCar_Statistical_Analysis/blob/019590fbffac223b47fa71a6e90bfc8da2d631f2/Resources/Total_Sum.png)

### Summary by Manufacturing Lot Number
The means of the lot numbers are similar to the population mean and the sample mean.  

![](https://github.com/jbowman86/MechaCar_Statistical_Analysis/blob/a0d66ad20a12dd5a851f91dc2de4309dc73b6926/Resources/Lot_Sum.png)

1.	The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?
      
The variance for the total manufacturing lot is approximately 62, which is within the expected design specifications of staying under 100 PSI.  However, when reviewing the data by Lot number, Lot 3 is the largest contributing factor to the variance.  Lot 3 shows a variance of 170, which is above the 100 PSI target and does not meet the design specifications.  Lot 1 and Lot 2 have significantly lower variance (approximately 1 and 7 respectively).  

## T-Tests on Suspension Coils
### T-test for all Lots

A summary of the t-test results for all manufacturing lots is included below:

![](https://github.com/jbowman86/MechaCar_Statistical_Analysis/blob/83a927d6fbc2f633bebf33f168642acd34a2acd7/Resources/t_test_all.png)
  
The true mean of the sample was 1498.78.  The calculated p-value was 0.06 which is higher than the established significance level of 0.05.  Since the p-value is greater than 0.05, the total manufacturing lot is not considered statistically significant from the normal distribution and normality can be assumed.   In other terms, the mean of all three manufacturing lots is statistically similar to the presumed population mean of 1500.

### T-test for Indiviudal Lots

A summary of the t-test results for individual manufacturing lots is included below:

![](https://github.com/jbowman86/MechaCar_Statistical_Analysis/blob/e3d364a9c25067c3a531fd581bfd4a705202786f/Resources/t_test_lot.png)

Lot 1: p-value = 1, alpha = 0.05    
The p-value is greater than 0.05 which means Lot 1 is not statistically significant from the normal distribution and normality can be assumed.  The mean falls within the 95% confidence interval.

Lot 2: p-value = 0.6072, alpha = 0.05 
The p-value is greater than 0.05 which means Lot 2 is not statistically significant from the normal distribution and normality can be assumed.  The mean falls within the 95% confidence interval.

Lot 3: p-value = 0.04168, alpha = 0.05   
The p-value is less than 0.05 which means it is statistically significant from the normal distribution and normality cannot be assumed.  However, the mean falls within the 95% confidence interval.

The total manufacturing lots as well as Lot 1 and Lot 2 were shown to have a normal distribution and p-values above the 0.05 significance level.  Therefore, there is not sufficient evidence to reject the null hypothesis, which shows the means for these three variables are statistically similar to the presumed population mean of 1500.  Lot 3 was shown to be statsitically different from the population mean for product quality.  Therefore, the manufacturing process needs to be checked for system failures that may have led to the suspension coils from this lot not meeting the established quality criteria.

## Study Design: MechaCar vs Competition

When comparing MechaCar to its competitors some additional metrics that could be of interest to a consumer could include city fuel efficiency, highway fuel efficiency, horsepower, maintenance cost, and/or safety rating.

1.	What metric or metrics are you going to test?   

The next metrics to test should be exploring the impact of maintenance cost, horsepower, city fuel efficiency and highway fuel efficiency on overall safety ratings for MechaCar compared to their competitors.

2.	What is the null hypothesis or alternative hypothesis?  
  
The null hypothesis is that the mean of the safety rating is similar to between MechaCar and its competitors. The alternative hypothesis is that the mean of the safety rating between MechaCar and its competitors is not equal.

3.	What statistical test would you use to test the hypothesis? And why? 
    
Using a multiple linear regression statistical summary would show how the variables, such as maintenance cost, horsepower, city fuel efficiency and highway fuel efficiency, impact the safety ratings for MechaCar and their competitors.  A model similar to linear regression model in Deliverable 1 would be ideal.  In this model, the independent variables being tested include: maintenance cost, horsepower, city fuel efficiency and highway fuel efficiency.  The dependent variable is therefore the safety rating for the vehicles.  The overall fit (or predictive value) of the model would be determined using the R-squared value.  Furthermore, two-sample t-tests comparing the safety ratings of MechaCar vehicles to each of its competitors can help determine whether MechaCar vehicles are significantly safer than their competitors.

4.	What data is needed to run the statistical test?     

A random sample of n > 50 for MechaCar and their competitors would need to be collected including the safety ratings, city fuel efficiency, highway fuel efficiency, maintenance costs and horsepower of each vehicle.  RStudio would then be used to construct the linear regression model and perform of the t-test calculations.

