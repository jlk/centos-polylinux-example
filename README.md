This project allows building a container image based on CentOS 8, with packages then upgraded with randomized packages compiled by Polyswarm. This isn't intended for distribution or production use, but to allow people to get an idea of how package-based vulnerability scanners would detect vulnerabilities in an image that is "protected" with Polymorphic Linux.

More can be found about Polyverse and their offerings [https://polyverse.com/](here)

Intended use:

```
docker build -t centos-polylinux-example --build-arg polyverse_key=peNbfGaszwMBWm5T3NhNwYnLi .
docker-squash centos-polylinux-example
```

...the squash is done to remove the polyverse key from the image history.

