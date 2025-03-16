# **Kestra setup and scripts**

- Run **Kestra container** from a specific directory on your local machine (`-v`) in detached mode (`-d`):

```python
docker run --pull=always --rm -d -p 8080:8080 --user=root -v /var/run/docker.sock:/var/run/docker.sock -v /Users/aurafrizzati/Desktop/DE-2025-FinalProject/terraform:/tmp kestra/kestra:latest server local
```

- Upload the relevant kestra yaml files to the Kestra Docker container:

```python
curl -X POST http://localhost:8080/api/v1/flows/import -F fileUpload=@01_gcp_kv.yaml
curl -X POST http://localhost:8080/api/v1/flows/import -F fileUpload=@02_gcp_kestra_ingestion_scheduled.yaml
```
