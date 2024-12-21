# Ubuntu 22.04 host for free
## Step1: Build
   ```
    docker build -t linux .
   ```
## Step2:Run
   ```
    docker run -it -p 4200:4200 linux
   ```
View on Port 4200
## Published Packege
  ```
    docker run -it -p 4200:4200 ghcr.io/abc123-hash-boop/render:latest
   ```
