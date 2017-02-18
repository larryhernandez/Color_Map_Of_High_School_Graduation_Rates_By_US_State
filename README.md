![](https://github.com/larryhernandez/Color_Map_Of_High_School_Graduation_Rates_By_US_State/blob/master/ACGR_Map_A_Glimpse.jpg)

# Project Name
Color Map Of High School Graduation Rates By U.S. State

# Project Description
This is a visualization project. Public high school graduation rates, aggregated by state and select student groups, for the class of 2015 are color-mapped onto an OpenStreetMap representation of the United States.

# Final Output
The final product is an html document that includes descriptions of the project, methods, sources of data, an interactive color map, and a brief comment on the results. The html document is located in this [repository](https://github.com/larryhernandez/Color_Map_Of_High_School_Graduation_Rates_By_US_State) under the name [map_high_school_graduation_rates_50_united_states.html](https://github.com/larryhernandez/Color_Map_Of_High_School_Graduation_Rates_By_US_State/blob/master/map_high_school_graduation_rates_50_united_states.html). However, it will not display under the current restriction set by Github. Therefore, a static, non-interactive version of the content is provided below.

________________________________________________________________________________________________________
# Static Version of the Final Output Is Presented Below


## Introduction

This work aims to provide a visualization of public high school graduation rates by state for the class of 2015. The visualization chosen is a choropleth, or color map.

The 4-year adjusted cohort graduation rate (ACGR) is the version of high school graduation rate that is studied and presented in this work. The ACGR accounts for student mobility, including school transfers, emigration, and even death during the 4-year academic period. ACGR is considered to be an accurate, if not the most accurate, estimate of 4-year graduation rates. The choropleth produced here displays the graduation rate for all students in each U.S. State.


## Methods
  Data for this project were downloaded from the [Common Core of Data (CCD)](https://nces.ed.gov/ccd/tables/ACGR_RE_and_characteristics_2014-15.asp) web site. These data were processed in the R Statistical package by utilizing the RStudio graphical user interface. The processed graduation rate data were then converted into several color maps of the United States with the utilization of a shape file and the leaflet package. These color maps are presented in the Results section of this document.


### Data Sources
  Adjusted Cohort Graduation Rate data was collected from the Common Core of Data (CCD) website, which is a program of the U.S. Department of Education's National Center for Education Statistics (NCES). Each year the CCD collects data for all public schools, public school districts, and state education organizations that operate within the United States. All data points reflect the 2014-2015 school year for school districts residing in the United States, including the District of Columbia, and are indexed with a unique Federal Information Processing Standard (FIPS) code. To create color maps of the ACGR data, a TIGER/Line Shapefile containing a spatial polygon with dataframe to visually represent the 50 United States was downloaded from the US Census website. Web links to the ACGR data and TIGER/Line Shapefiles are provided in Appendix A of this document. 


### Data Processing
  The ACGR data were cleaned and transformed for analysis. After loading into R, the data were represented as factor variables. User-defined functions were then utilized to transform these factors into the appropriate variable type (numeric variables for graduation rates or character strings for state names) so that the data set could be analyzed. Numerical ranks were assigned to the ACGR values in each student group analyzed. That is, within each student group each reported ACGR value was numerically ranked from 1 to 51 (i.e. 50 states + the District of Columbia) so that the state with the highest reported ACGR was given the rank of 1. All ties were broken based on the order that the values were examined, so it possible that two or more states could have the same ACGR value but slightly different rank. For example, three states with ACGR of 89.0% could be ranked as 3,4,5. The R code that was developed to complete this work is freely available for others to use. A web link to the source code is included in Appendex B.


### Visualization
  The Leaflet (for R) package was used to overlay a modified shape file onto a map of the U.S. The original, unmodified shape file was downloaded from the U.S. Census website. This shape file contains a spatial polygon data frame representing the 50 U.S. states, the District of Columbia, and additional U.S. territories. To make this shape file useful for creating a color-map of the processed graduation rates, the spatial polygon dataframe associated with the shape file was updated to include the processed ACGR data. This modified spatial polygon was then overlayed onto a map of the U.S. using a color palette for various ranges of graduation rates.

## Results

  A color map has been produced and is presented below. The figure presented below shows only the 48 contiguous states; however, the interactive version of the map (found [here](https://github.com/larryhernandez/Color_Map_Of_High_School_Graduation_Rates_By_US_State/blob/master/map_high_school_graduation_rates_50_united_states.html)) allows users to pan in any of the four cardinal directions (i.e. North, South, East, West) to reveal Hawaii and Alaska. In the interactive version of the map, it is also possible to click on each state to reveal the average graduation rate and rank for the student group represented in the corresponding map. 

### Graduation Rates by State

![2015 US National Graduation Rates](https://github.com/larryhernandez/Color_Map_Of_High_School_Graduation_Rates_By_US_State/blob/master/ACGR_Map_A_Glimpse.jpg)
**Figure 1: Non-interactive version of color map. The graduation rate for all students in the U.S. was 83.2% in 2015.**


  The graduation rates for students in each of the 50 United States is displayed in Figure 1. Iowa topped the country at 90.8%, followed closely by New Jersey (89.7%), Alabama (89.3%), and Texas (89.0%). The state with the lowest graduation rate was New Mexico at 68.6%. States which fared slightly better were Nevada (71.3%), Oregon (73.8%), and Mississippi (75.4%).


## Appendix A: Data Sources
The following is a list of the data sources used to create the visualizations presented in this work.

[1] Adjusted Cohort Graduate Rates for School Year 2014-2015 provided by Common Core of Data:     
    https://nces.ed.gov/ccd/tables/xls/ACGR_RE_Characteristics_2014-15.xlsx


[2] TIGER geographic shape file (i.e. spatial polygon representation of the United States + territories):
    ftp://ftp2.census.gov/geo/tiger/TIGER2015/STATE/tl_2015_us_state.zip

    
   More information about TIGER/Line Shapefiles can be found at: <br>
   https://www.census.gov/geo/maps-data/data/tiger-line.html


## Appendix B: Code Used to Complete This Project
The code utilized for processing and visualizing the 2015 Adjusted Cohort Graduation Rate data is posted on [GitHub](https://github.com/larryhernandez/Color_Map_Of_High_School_Graduation_Rates_By_US_State) and is freely available for others to use.

Note: Special thanks to Zev Ross for having created a [tutorial about generating maps with leaflet.](http://zevross.com/blog/2014/04/11/using-r-to-quickly-create-an-interactive-online-map-using-the-leafletr-package/) I relied on the content from that tutorial for generating the maps presented here.