# Citibike-Descriptive-Analysis

## Overview
With the avaliable citibike data online, the project explored 20 thousand trip records to estimate total revenue, adjust pricing strategy, as well as designed gender segmentation strategy.

- Assuming all users riding bikes from 0 to 45 minutes pay $3 per ride and user exceeding 45 minutes pay an additional $2 per ride, what is the tootal revenue?

- Based on the tripduration variance, how does it impact the pricing strategy as well as inventory availability?

-  A business manager wants to reallocate the $5M marketing budget using a gender segmentation strategy, what you will propose to? 


## Analytics Process 

* Basic Exploration

* Summary Statistics
    - Summary statistics for tripduration
    - Summary statistics for age
    - Summary statistics for tripduration in minutes (Need to transform tripduration from seconds to minutes)

* Correlation Exploration
As the duration is the measure for the final payment, I focused on the duration as the key, and explore its relationship with user's characterisric.
    - Tripduration & Age
    - tripduration by gender

## Business Analysis: 
**Revenue Estimation**

Assumption: all users riding bikes from 0 to 45 minutes pay $3 per ride and user exceeding 45 minutes pay an additional $2 per ride.

Based on the assumption, I split the trips into two groups based on the tripduration, and get the estimate revenue around $63000.

**Pricing strategy**

As we summarized above, the variance of tripduration in minutes is large, which means the time people used citibike are largely varied and spread out from the average duration time, and there exits some extreme value, which means only a minimum people take the citibike for an extremely long time. 

For the pricing itself, as a significant factor that impact the balance between product supply and demand, there are several factors we need to consider for the price strategy:
- Fixed and variable costs
- Competition
- Company objectives
- Proposed positioning strategies
- Target group and willingness to pay

For the company objectives, the citibike program is aimed to encourage more people to use cycling as a new transport to reduce emissions, road wear, collisions, and transit congestion. At the same time, considering bicycle is more used for a short trip, so several things I am gonna propose related with pricing strategy,

- The starting price should be more acceptable compared with other public transport.

**Method adopted**: as most people used it as a short trip transport, in order to encourage more people,
    - The usage time for the starting price need include the majority trip duration
    - Adding membership or more discount encourage people take it as a major transport.

- Towards some extreme tripduarion, in order to decrease the maintenance fee for all the bikes and stations,
**Method adopted**: Except the starting price, set on one or two levels to control some extremes duration time.

**Inventory strategy**

For the for inventory availability, as most people use the bike for a short time, the inventory basically could satisfy the public demand. But for some tourist sites, it still depends on the station density and public demand. In addition, in order to make sure
the availability, the citibike could adopt a method to set certain usage time for unlimited pass or membership, which could encourage riders return the bike to some certain stations in a certain time period.

**Business Model**

A business manager wants to reallocate the $5M marketing budget using a gender segmentation strategy. Specifically, the manager is asking you to create two models:
  - A model that use % of male vs females in the dataset
  - A model based on average trip duration by gender
  
  
