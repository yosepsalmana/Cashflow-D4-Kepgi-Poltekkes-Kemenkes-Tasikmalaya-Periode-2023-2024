# Cashflow-D4-Kepgi-Poltekkes-Kemenkes-Tasikmalaya-Periode-2023-2024
Given a dataset containing financial information for the D4 Dental Nursing Program at the Health Polytechnic of the Ministry of Health in Tasikmalaya. There are two separate files containing information about various payments and expenditures from July 2023 to July 2024.
### Business Problem :
1.	How to show the total income, expenses, and current balance (range July 2023 – July 2024)
2.	Identify the students who have not paid the cash fund, and specify how many months and in which months they have missed the payments.
## STEP

### Data Preprocessing and Transformation
1. Removing unnecessary columns : Cleaning the dataset by dropping columns that are not needed for the analysis. This helps in reducing the complexity and improving the efficiency of the data processing.
2. Filling the null (blankspaces) with values (zero) : Handling missing data by filling in the blank spaces with zeros. This is important to ensure that the analysis does not encounter errors due to missing values.
3. Changing the tanggal column into date format : Converting the data type of the 'tanggal' (date) column to a proper date format.
4. Merging the kas_2023 table with the kas_2024 table and combining all the data that represents income : Combining data from two different tables (kas_2023 and kas_2024) into a single dataset and ensuring that only the relevant data (income) is included. This helps in consolidating data for comprehensive analysis.
5. Transforming the table from wide format to long format : Reshaping the data from a wide format, where each variable is in a separate column, to a long format, where each observation is in a separate row.
6. Merging kas and income that are already in long format : Combining two datasets that are both in long format, ensuring that the data is consolidated and ready for analysis. <br/>
   
*Performing the same steps for the expenditure table.* <br/>

## Visualization Result


![Dashboard](https://github.com/user-attachments/assets/f980360d-1571-4fe4-bd61-0d3bb2b4f710)
