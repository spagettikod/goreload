# goreload
Dead simple container to run your Go application daemon and restart it when files change. Just mount your project root to `/app`.

Exmaple:
```
docker run --rm -it -p 8080:80 -v $(pwd):/app ghcr.io/spagettikod/goreload
```
