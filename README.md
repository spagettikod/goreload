# goreload
Dead simple container to run your Go application daemon and restart it when files change. Just mount your project root to `/app`.

Example:
```
docker run \
    --rm \
    -it \
    -p 8080:80 \
    -v $(pwd):/app \
    ghcr.io/spagettikod/goreload
```

You can also supply your own script to execute at each reload by mounting a script to destination `/doer.sh`:
```
docker run \
    --rm \
    -it \
    -p 8080:80 \
    -v $(pwd):/app \
    -v $(pwd)/my_custom.sh:/doer.sh \
    ghcr.io/spagettikod/goreload
```


## Development
Documentation for development of `goreloader`.

### Testing
```
docker build -t ghcr.io/spagettikod/goreload:1.1.0 .
```

Testing the built-in script:
```
docker run --rm -it -v $(pwd)/tester:/app ghcr.io/spagettikod/goreload:1.1.0
```

Testing a custom script:
```
docker run --rm -it -v $(pwd)/tester:/app -v $(pwd)/tester/custom_doer.sh:/doer.sh ghcr.io/spagettikod/goreload:1.1.0
```

### Build
Build new version:
```
docker build -t ghcr.io/spagettikod/goreload:1.1.0 -t ghcr.io/spagettikod/goreload:latest .
```
