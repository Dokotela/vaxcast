# 4 - Processing Model
## 2.1
#### The actual steps involved in forecasting vaccinations
1. Evaluate All Patient Series
2. Evaluate each dose administered to see if it meets all required criteria for each appropriate series, and then forecast the next required dose for the series
3. Select Patient Series
4. Select the patient series by antigen to recommend for the patient
5. Identify and Evaluate Vaccine Group
6. Merge Antigen Recommendations into Vaccine Recommendations

Many of the diagrams from the CDC manual I didn't think made sense when I first when through them, and are still not terribly helpful to understanding the process, at least for me, so I'm going to leave them out. Although this one isn't bad:

![Figure ](images/4-2%20Refinement%20of%20Patient%20Series)

## 2.2 Organize Immunization History
#### This is pretty self explanatory. After obtaining all of the immunization a patient has received, break them down into their [antigenic components](lib/features/immunizationForecast/data/datasources/scheduleSupportingData/cvxToAntigenMap.json). 

## 2.3 Evaluate Immunization History
#### This is actually one of the sections that made more sense to me, but I'll still try and clear it up a bit.
1. For each series, within each antigen, we start at the first target dose. 
2. We compare, in chronological order, all of the antigens the patient has received that could satisfy the target dose.
3. If the patient has received no antigens for this series, we are finished with that series for now.
4. There are multiple requirements that have to be met to satisfy a target dose (was the vaccine given at the correct age, was the interval between the last dose and this dose appropriate, etc).
5. If all of those requirements are met, then that target dose is said to be satisfied.
6. If the patient has more antigens, we start the process over and evaluate the antigens remaining against the next target dose.
7. When the patient has not more doses, or the series has no more target doses (we have successfully completed it), then we are done and can move onto the next series
8. The one exception is for series that are recurring (such as Flu or Tetanus). In this case, anytime a target dose is met, a new target dose, identical to the original is created, adn then compared against the previous vaccines.