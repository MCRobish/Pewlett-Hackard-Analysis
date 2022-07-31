# Pewlett-Hackard-Analysis
## Overview of the Analysis: 

The purpose of this analysis was to take a set of several csv files containing HR data from an imaginary company. The target was to determine the number of employees retiring per title in the company, as well as identify some employees that are eligible in a mentorship program. The goal is to begin training early in order to prevent significant knowledge loss and staffing issues as these individuals retire. 

## Results:

**Deliverable 1: Determining the Titles Eligible for Retirement**

* The definition of employees that are "at risk" of retiring was for employees with birth dates from 1952-1955. The _retirement_titles.csv_ file gives the employee number, names, titles and the dates those titles were help for all employees within that range of birth dates. However, that dataset is limited because some employees have received promotions and title changes throughout their careers, resulting in duplicate records. Two examples are shown in the screen shot below for Christian Koblick and Kyoichi Maliniak. This data set is also problematic because it does not exclude employees that have already retired or left the company. 

<p align="center" width="100%">
    <img width="50%" src=https://user-images.githubusercontent.com/105991478/182036595-1fea4ba4-05cd-4ab4-b3b6-3a3aac535832.png>
</p>


* In order to identify only the current employees that are potentially at risk of retiring, the 
```DISTINCT ON (emp_no)``` statement was used. 

* It is also important to understand which roles would be the most impacted by retirement, so that crosstraining and hiring can focus first on re-staffing those roles quickly. This was quickly depicted by using the ```GROUP BY(unique_titles.title)``` statement and counting how many people are at risk of retiring. This is depicted in the table below: 
<p align="center" width="100%">
    <img width="30%" src=https://user-images.githubusercontent.com/105991478/182037507-b271c8ea-6465-4dad-9ab6-5453b225ffc8.png>
</p>

* Based on this information, HR should focus on strategically filling the Senior Engineer and Senior Staff roles, potentially through mentoring junior staff in lower level roles and hiring additional junior staff. 

**Deliverable 2: Determining Employees Eligible for Mentorship Program**

* Employees eligible for mentorship were defined as the employees below retirement age by approximately 10 years, or those born in 1965. These employees are defined in the _mentorship_eligiblity.csv_ file.  
* There are only 1549 names in the list of eligible employees for mentorship, which would nto come close to covering the gap shown in the table above. Pewlett Hackard should increase their criteria window for mentorship to include more birth dates, or they will need to recruit more individuals that meet this mentorship criteria.
* 
