![Stoplight Logo](http://bigstickcarpet.com/docker-images/img/stoplight-logo.png)

Stoplight Prism
==============================
A docker image for [**Prism**](http://stoplight.io/platform/prism/), the command-line tool for [**Stoplight.io**](http://stoplight.io/).

- [Dockerfile source](https://github.com/BigstickCarpet/docker-images/blob/master/stoplight-prism/Dockerfile)
- [Getting started with Prism](https://help.stoplight.io/prism/getting-started)
- [Integrating Prism into CI](https://help.stoplight.io/scenarios/conducting-scenarios-outside-of-stoplight/running-scenarios)


Installation
---------------
Pull the [`bigstickcarpet/stoplight-prism` image](https://hub.docker.com/r/bigstickcarpet/stoplight-prism/) from DockerHub

```
docker pull bigstickcarpet/stoplight-prism
```


Usage
---------------
You can run this Docker image just like the Prism CLI, passing it whatever arguments you want.

> **NOTE:** If your prism command needs to access local files, then mount them in the `/app` directory

```
docker run -v $(pwd):/app bigstickcarpet/stoplight-prism \
  conduct collection.json \
  --spec spec.json \
  --env environment.json
```

