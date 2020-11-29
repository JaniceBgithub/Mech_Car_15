# Mech_Car_15

## Linear Regression to Predict MPG

Linear regression was used to determine which factors are important for fuel consumption.   Where the Pr>t values are smaller than 0.05, means that these items are unlikely to be providing random variance.   Therefore vehicle length and ground clearance are the most important factors in predicting fuel consumption. 

![regression](https://github.com/JaniceBgithub/Mech_Car_15/blob/main/Resources/Regresssion_Screen_shot.png)

The slope is not zero because there are factors that affect the fuel consumption. 

The model is a good fit and predictor of fuel consumption with a R2 of 0.7149 and a very low p-value, below 0.05.

## Summary Statistics on Suspension Coils

The mean and median for the entire sample set is close to the 1500 target and the variance is less than the allowable level of 100.


![total_summary](https://github.com/JaniceBgithub/Mech_Car_15/blob/main/Resources/2a.png)

Lot 1 is right on target with a mean of 1500 and a low standard deviation and extremely low variance.  

Lot 3 is having some issues!!  The mean and median has deviated from 1500 and the standard deviation is high!  The variance is 170, 70 higher than allowable.   

Lot 2 is nearly on target, but not quite as good as lot 1.  Lot 2 is acceptable.

![lot_summary](https://github.com/JaniceBgithub/Mech_Car_15/blob/main/Resources/2B.png)

## T tests on suspension coils

The mean of the entire sample set is 1498.78.  The p value for the entire dataset is 0.0628 when compared to the target of 1500.  Since this is higher than the significance level of 0.05, the null hyphothesis is not rejected - the means are statistically the same. 

Lots 1, 2 and 3 are similar - they all have p values higher than 0.05 which and the means are not statisically different verus the entire sample set mean of 1498.78.

![t](https://github.com/JaniceBgithub/Mech_Car_15/blob/main/Resources/t-test%20summary.png)


