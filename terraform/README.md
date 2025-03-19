# **Terraform setup and scripts**

These are the terraform scripts used in this project:

- [`main.tf`](https://github.com/AuraFrizzati/DE-2025-FinalProject-NHS-EmergencyDeptAttendances/blob/main/terraform/main.tf): terraform script to specify **Google** as **infrastructure provider** and the **resources** to create (`google_storage_bucket` and `google_bigquery_dataset`)

- [`variables.tf`](https://github.com/AuraFrizzati/DE-2025-FinalProject-NHS-EmergencyDeptAttendances/blob/main/terraform/variables.tf): **Terraform variables** specified in `main.tf`

- A **Google Storage Bucket** and a **Google Bigquery Dataset** were created to host the data lake and the data warehouse for the project, respectively

- Access to Google Cloud was granted to Terraform by setting in the terminal a **GOOGLE_APPLICATION_CREDENTIALS** environment variable pointing to the path where the **service-account-key-file.json** was stored on the local machine:

```
export GOOGLE_APPLICATION_CREDENTIALS="/path/to/your/service-account-key-file.json"
```
