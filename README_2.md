steps:

- create gcp bucket and bq dataset for the project using terraform

- set up Kestra workflow to move NHS AE csvs from web to bucket after having been renamed properly

- use dbt/BQ Dataform to remove the Total row from the newest extract and, extract and extracting month and year and finally append the latest data extract

1: Google Cloud Platform (GCP) setup:  
1.1 Create a new project on GCP  
1.2 Create a Service Account to enable different tools (Terraform, Kestra) to interact with the GCP project  
1.3 Use Terraform to create a bucket (data lake) and a BigQuery dataset (data warehouse)    
    - Note: the service account needs to have these roles enabled: `Bigquery Admin`, `Storage Admin`  

2: Kestra workflow setup:  

- Run Kestra container from a specific directory on your local machine (`-v`) in detached mode (`-d`)

`docker run --pull=always --rm -d -p 8080:8080 --user=root -v /var/run/docker.sock:/var/run/docker.sock -v /path/to/your/directory:/tmp kestra/kestra:latest server local`

`curl -X POST http://localhost:8080/api/v1/flows/import -F fileUpload=@01_gcp_kv.yaml`
`curl -X POST http://localhost:8080/api/v1/flows/import -F fileUpload=@02_gcp_kestra_ingestion.yaml`
