![Swagger Logo](http://bigstickcarpet.com/docker-images/img/swagger-logo.png)

Swagger-Diff
==============================
A docker image for [**Swagger::Diff**](https://github.com/civisanalytics/swagger-diff), by [**Civis Analytics**](https://new.civisanalytics.com/).

- [Dockerfile source](https://github.com/BigstickCarpet/docker-images/blob/master/swagger-diff/Dockerfile)
- [swagger-diff CLI reference](https://github.com/civisanalytics/swagger-diff#command-line)
- [Using Swagger to detect breaking API changes](https://swagger.io/blog/using-swagger-to-detect-breaking-api-changes/)


Installation
-----------------------------
Pull the [`bigstickcarpet/swagger-diff` image](https://hub.docker.com/r/bigstickcarpet/swagger-diff/) from DockerHub

```
docker pull bigstickcarpet/swagger-diff
```


Usage
-----------------------------
You can run this Docker image just like the swagger-diff CLI:

```
docker run bigstickcarpet/swagger-diff \
  http://api.com/v1/swagger.json \
  http://api.com/v2/swagger.json
```

> **NOTE:** If you want to compare two _local_ files, then mount a volume:

```
docker run \
  -v $(pwd):/api \
  bigstickcarpet/swagger-diff \
  /api/v1.json \
  /api/v2.json
```


Building Locally
-----------------------------
To build/test the image locally on your computer:

1. __Clone this repo__<br>
`git clone https://github.com/bigstickcarpet/docker-images.git`

2. __Build the image__<br>
`docker build --tag bigstickcarpet/swagger-diff:latest swagger-diff`

3. __Run the image__<br>
See the [usage section](#usage) above

4. __Publish the image to DockerHub__<br>
`docker push bigstickcarpet/swagger-diff:latest`
