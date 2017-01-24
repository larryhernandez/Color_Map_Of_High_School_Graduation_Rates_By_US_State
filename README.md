# Project Name
Color Map Of High School Graduation Rates By U.S. State

# Project Description
This is a visualization project. Public high school graduation rates, aggregated by state and select student groups, for the class of 2015 are color-mapped onto an OpenStreetMap representation of the United States.

# Final Output
The final product is an html document that includes description of the project, methods, sources of data, and a brief summary. The html document is located in this repository under the name [map_high_school_graduation_rates_50_united_states.html](https://github.com/larryhernandez/Color_Map_Of_High_School_Graduation_Rates_By_US_State/blob/master/map_high_school_graduation_rates_50_united_states.html). This html file is currently NOT rendering on github, but it can be downloaded and opened with Google Chrome and Internet Explorer. It might be viewable with other internet browsers, but I have not tried using any others.

Since the final html document cannot currently be rendered on github, a jpeg image of one of the color maps is presented below. The jpeg image was captured after clicking on North Dakota with the pointer, thereby revealing the data for that state. The jpeg image is located in this repository and is also presented below ![The 2015 US National Gaduation Rate](https://github.com/larryhernandez/Color_Map_Of_High_School_Graduation_Rates_By_US_State/blob/master/ACGR_Map_A_Glimpse.jpg)


## Introduction

High school graduation rates have been collected and published by the US Department of Education for several years, but only a few visualizations of these data are presented online (or are easily found) for recent data. This work aims to provide a visualization of public high school graduation rates by state for the class of 2015. The visualization chosen is a choropleth, or color map, and it is utilized to visualize public high school graduation rates for several student groups.

  The 4-year adjusted cohort graduation rate (ACGR) is the version of high school graduation rate that is studied and presented in this work. The ACGR accounts for student mobility, including school transfers, emigration, and even death during the 4-year academic period. ACGR is considered to be an accurate, if not the most accurate, estimate of 4-year graduation rates. The definition of the 4-year ACGR is available on the Common Core of Data website and is reproduced below:

  + "The 4-year ACGR is the number of students who graduate in 4 years with a regular high school diploma divided by the number of students who form the adjusted cohort for the graduating class. From the beginning of 9th grade (or the earliest high school grade), students who are entering that grade for the first time form a cohort that is "adjusted" by adding any students who subsequently transfer into the cohort and subtracting any students who subsequently transfer out, emigrate to another country, or die. To protect the confidentiality of individual student data, ACGRs are shown at varying levels of precision depending on the size of the cohort population for each category cell. There are some differences in how states implemented the requirements for the ACGR, leading to the potential for differences across states in how the rates are calculated. This is particularly applicable to the population of children with disabilities."


## Methods
  Data for this project were downloaded from the [Common Core of Data (CCD)](https://nces.ed.gov/ccd/tables/ACGR_RE_and_characteristics_2014-15.asp) web site. These data were processed in the R Statistical package by utilizing the RStudio graphical user interface. The processed graduation rate data were then converted into several color maps of the United States with the utilization of a shape file and the leaflet package. These color maps are presented in the Results section of this document.


### Data Sources
  Adjusted Cohort Graduation Rate data was collected from the Common Core of Data (CCD) website, which is a program of the U.S. Department of Education's National Center for Education Statistics (NCES). Each year the CCD collects data for all public schools, public school districts, and state education organizations that operate within the United States. All data points reflect the 2014-2015 school year for school districts residing in the United States, including the District of Columbia, and are indexed with a unique Federal Information Processing Standard (FIPS) code. To create color maps of the ACGR data, a TIGER/Line Shapefile containing a spatial polygon with dataframe to visually represent the 50 United States was downloaded from the US Census website. Web links to the ACGR data and TIGER/Line Shapefiles are provided in Appendix A of this document. 


### Data Processing
  The ACGR data were cleaned and transformed for analysis. After loading into R, the data were represented as factor variables rather than as numerical variables (for graduation rates) or character strings (for names of states). User-defined functions were then utilized to transform these factors into the appropriate variable type (numeric or character strings) so that the data set could be analyzed. Numerical ranks were assigned to the ACGR values in each student group (i.e., Economically Disadvantaged, Black, American Indian, etc). That is, within each student group each reported ACGR value was numerically ranked from 1 to 51 (ie. 50 states + the District of Columbia) so that the state with the highest reported ACGR was given the rank of 1. All ties were broken based on the order that the values were examined, so it possible that two or more states could have the same ACGR value but slightly different rank (i.e. Three states with ACGR of 89.0% could be ranked as 3,4,5). The R code that was developed to complete this work is freely available for others to use. A web link to the source code is included in Appendex B.


### Interactive Visualizations
  The Leaflet (for R) package was used to overlay a modified shape file onto a map of the U.S. The original, unmodified shape file was downloaded from the U.S. Census website. This shape file contains a spatial polygon data frame representing the 50 U.S. states, the District of Columbia, and additional U.S. territories. To make this shape file useful for creating a color-map of the processed graduation rates, the spatial polygon dataframe associated with the shape file was updated to include the processed ACGR data. This modified spatial polygon was then overlayed onto a map of the U.S. using a color palette for various ranges of graduation rates.

## Results

  Interactive color maps have been produced and are presented below as Figures 1-4. While at first glance these figures appear to show only the 48 contiguous states, the interactive nature of these maps allows users to pan in any of the four cardinal directions (i.e. North, South, East, West) to reveal Hawaii and Alaska. It is also possible to click on each state to reveal the average graduation rate and rank for the student group represented in the corresponding map, with a rank of 1 indicating the highest graduation rate and 51 indicating the lowest graduation rate in the US, where the District of Columbia has been included. In cases where data is unavailable for all fifty states or the District of Columbia, the lowest achievable rank is smaller than fifty one.

### Map #1: Graduation Rates by State

![The 2015 US National Gaduation Rate](https://github.com/larryhernandez/Color_Map_Of_High_School_Graduation_Rates_By_US_State/blob/master/ACGR_Map_A_Glimpse.jpg)


  The average graduation rate of all students in each of the 50 United States is displayed in Figure 1. Iowa topped the country at 90.8%, followed closely by New Jersey (89.7%), Alabama (89.3%), and Texas (89.0%). The state with the lowest graduation rate was New Mexico at 68.6%. States which fared slightly better were Nevada (71.3%), Oregon (73.8%), and Mississippi (75.4%). The region with the lowest graduation rate was the District of Columbia at 68.5%.


### Map #2: Economically Disadvantaged Students

Since students who are economically disadvantaged may face limited access to resources, and therefore suffer academically, a map of the graduation rates for this student group has been generated (Figure 2). The results show that economically disadvantaged students residing in Texas fared best with a group graduation rate of 85.6%, which is pretty close to the overall (i.e. all students) rate of 89.0% for Texas that year. Texas ranked 4th in the nation for the graduation rate that includes all students (Figure 1), so this could be an indication that the public school system in Texas is doing some great things. Closely trailing Texas is Iowa (84.8%) which ranked 1st for the overall graduation rate, followed by Kentucky (84.8%), and then Alabama (84.7%).


The state which fared worst at graduating economically disadvantaged students was New Mexico (63.5%). Nevada (63.7%) did not fare much better. Neither did Colorado (65.5%) or Wyoming (66.0%). All four of these states reside in proximity of reach other in the Western United States. It would be interesting to compare Figure 2 with a corresponding map that illustrates economic welfare.


It is known among educators that graduation rates for Asian (90.2%) and White (87.6%) students are higher than those of Hispanic (77.8%), Black (74.6%), and American Indian students (71.6%). It may not be so well-known that on a national level American Indian students graduate at lower rates than any of the other four racial groups (Figure 3). Figure 4 reveals that only 45-70% of American Indian students graduated high school in 15 of 24 states situated on or west of the Mississippi River. What is happening in the Western United States that American Indian students are graduating in low numbers? The states where American Indian student graduation rates were the highest include Alabama (90%), New Jersey (89%), and Connecticut (87%). The lowest rates were in Wyoming(45%), South Dakota (49%), and Minnesota (52%).


  Note that for this data, students from Alaska Native backgrounds are included in the American Indian category. Native Hawaiians are not included in the American Indian category, but instead are included in the Asian category (as are students from other Pacific Islander cultures). Additionally, Black includes African American, and Hispanic includes Latino.

### Map #4: Black Students

While the graduation rate of American Indian students is lowest among all racial groups, the ACGRs of Black students (74.6%) is not much higher (Figure 4). And in fact, the ACGR of black students was lowest among all racial groups in 23 states. The fact that this is nearly half the total number of states in the country is alarming. Black students graduate at lowest rates in Nevada (55.5%), Ohio (59.7%), and New Mexico (61%). Graduation rates of Black students are highest in Alabama (87%), Texas (85.2%), and Delaware (83.2%). What is being done in Alabama and Texas that could be utilized in other states to increase the high school graduation rate of Black students?


## Summary

The national four-year high school graduation rate for the 2015 student cohort was 83.2%. It is clear from Figure 1 that high school graduation rates in most states exceed 75%, with 35 of 50 states surpassing 80%. 


Economically Disadvantaged students are graduating at rates below 70% in 11 states; this group is also graduating below the national rate (83.2%) in 44 states. 


It is clear from Figures 3-5 that American Indian, Black, and Hispanic students are graduating at rates far below their White and Asian peers.


For brevity, the graduation rates of students with disabilities and students with Limited English Proficiency (LEP) were not presented. If a visualization tool for R were capable of yielding several maps in one graphic, through the use of a filter button, and without color-mixing, then these data would have been presented (or will be implemented in the future). To briefly summarize, these two student groups are graduating at rates far below the national average of 83%. Students with Limited English Proficiency are graduating at rates ranging from 32% to 86%, and students with disabilities are graduating at rates between 29% and 81.9%.

What can be done to raise the high school graduation rate for American Indian / Alaska Native, Black, Hispanic, LEP, and disabled students? Perhaps the systems in place in states with high graduation rates for many student groups, like Alabama and Texas, could be implemented in states where graduation rates are low.


## Appendix A: Data Sources
The following is a list of the data sources used to create the visualizations presented in this work.

[1] Adjusted Cohort Graduate Rates for School Year 2014-2015 provided by Common Core of Data:     
    https://nces.ed.gov/ccd/tables/xls/ACGR_RE_Characteristics_2014-15.xlsx


[2] TIGER geographic shape file (i.e. spatial polygon representation of the United States + territories):
    ftp://ftp2.census.gov/geo/tiger/TIGER2015/STATE/tl_2015_us_state.zip

    
   More information about TIGER/Line Shapefiles can be found at: <br>
   https://www.census.gov/geo/maps-data/data/tiger-line.html


## Appendix B: Code Used to Complete This Project
The code utilized for processing and visualizing the 2015 Adjusted Cohort Graduation Rate data is posted on [GitHut](https://github.com/larryhernandez/Color_Map_Of_High_School_Graduation_Rates_By_US_State) and is freely available for others to use.

Note: Special thanks to Zev Ross for having created a [tutorial about generating maps with leaflet.](http://zevross.com/blog/2014/04/11/using-r-to-quickly-create-an-interactive-online-map-using-the-leafletr-package/) I relied on the content from that tutorial for generating the maps presented here.