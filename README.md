Stoplight Prism
==============================
[Prism](http://stoplight.io/platform/prism/) is the command-line tool for [Stoplight](http://stoplight.io/).

- [Getting started with Prism](https://help.stoplight.io/prism/getting-started)
- [Integrating Prism into CI](https://help.stoplight.io/scenarios/conducting-scenarios-outside-of-stoplight/running-scenarios)

Usage
---------------
You can run this Docker image just like the Prism CLI, passing it whatever arguments you want.

> **NOTE:** If your prism command needs to access local files, then mount them in the `/app` directory

```
docker run bigstickcarpet/stoplight-prism \
  -v $(pwd):/app \
  conduct collection.json \
  --spec spec.json \
  --env environment.json
```

