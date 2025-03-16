# **Kestra setup and scripts**

- Run **Kestra container** from a specific directory on your local machine (`-v`) in detached mode (`-d`):

```
docker run --pull=always --rm -d -p 8080:8080 --user=root -v /var/run/docker.sock:/var/run/docker.sock -v /Users/aurafrizzati/Desktop/DE-2025-FinalProject/terraform:/tmp kestra/kestra:latest server local
```