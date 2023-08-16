# Project: Human Resources Data Set
<b>Goal: To provide this fictional HR department with a dashboard that will enable them to see a summary of their employees at-a-glance, in addition to a breakdown of employees by manager.</b><br><br>
<picture>![tableau favicon](https://github.com/rachel-m-wheeler/nyrr-running-races-in-nyc/assets/102989527/c9c6b47b-3a93-4a74-9dbb-2ffb038b6981)</picture><a href="https://public.tableau.com/app/profile/rachel.wheeler/viz/HRDashboard_16920407834840/Dashboard1"><b> Tableau Story Presentation</b></a><br>
<picture><img src="https://github.com/rachel-m-wheeler/data-analytics/assets/102989527/f33479ad-4db4-4665-9298-6814bfb83a97"></picture><a href="https://github.com/rachel-m-wheeler/superstore-marketing/blob/main/Superstore%20Marketing%20SQL.sql"><b> SQL</b></a><br>

## Project Summary

A fictional company has an HR data set with information about all of their employees, including demographics, performance ratings, and salaries. I imported the customer data into SQL and queried it. Then I created a Tableau dashboard that would allow the HR department to view a summary of their company's employees—both overall, and by specific manager.

## Process
<b>Data Source:</b> <a href="https://www.kaggle.com/datasets/rhuebner/human-resources-data-set">Human Resources Data Set</a> (Kaggle)<br>
<br>
<b>Data Cleanup & Preparation:</b><br>
	• I created an <em>Age</em> column and calculated the age of each customer by subtracting the value in the Year_Birth column from 2023.<br>
	• I converted the <em>Zip</em> column type to zip code, to ensure that the zeros at the start of the zip codes are preserved.<br>
 	• I filled in the <em>MangerID</em> column for the manager Webster Butler, because he was the only manager who did not have one.<br>


