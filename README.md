## WALMART-SALES DATAPIPELINE - FINAL CAPSTONE PROJECT SUBMISSION

#### 1. DATASET CHARACTERISTICS

The input file dataset for walmart sales consists of the following data elements:
1. Invoice	- Numeric field - identify the Invoice number for a sales or purchase
2. StockCode	- Numeric field - identify the product code for an item
3. Description	- String field - Description of the product
4. Quantity	- Numeric field - Total quantity of the product 
5. InvoiceDate	- Date field - Date of the invoice
6. Price	- Numeric - Total Price of the invoice
7. Customer ID	- Numeric field - Customer Identifier
8. Country - String field - Country name

Below is the snapshot of the data

![img1](https://github.com/bsathyamur/WalmartSalesDataPipeline-Final-Capstoneproject/blob/main/dataset-snapshot.png)

#### 2. DATA FLOW BETWEEN AZURE COMPONENTS
![img1](https://github.com/bsathyamur/WalmartSalesDataPipeline-Final-Capstoneproject/blob/main/architecture.png)

#### 3. DESCRIPTION OF EACH STEP OF THE PIPELINE

1. Acquisition and Cleansing
Data acquistion and cleansing is performed in the azure notebooks. The notebook will process the files uploaded to the input folder in the blob container and perform the following cleansing steps:

* Replace null customer ID field with the value as "Guest"
* Replace null description field with the value as "Unlisted"
* Include a new field for identifying the quarter of the year based on the invoice date
* Include a new field for identifying the transaction type as either Purchase or Return based on the quantity. A positive quantity is recorded as Purchase &nbsp;&nbsp;&nbsp; whereas a negative quantity is recorded as Return.

3. Transformation

#### 2. AZURE DATA MONITOR DASHBOARD FOR THE PIPELINE
![img2](https://github.com/bsathyamur/WalmartSalesDataPipeline-Final-Capstoneproject/blob/main/walmartSales-MonitorDashboard.png)
