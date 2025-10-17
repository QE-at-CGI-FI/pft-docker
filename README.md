# pft-docker
Teaching docker on python for testing series. 

Base image, e.g: docker pull mcr.microsoft.com/playwright/python:v1.55.0-noble

Build docker: docker build --tag my-tests .

Run on mac/linux: docker run --rm --net=host --security-opt seccomp:unconfined --shm-size "256M" -v $PWD:/app my-tests


Schemathesis: docker run --rm schemathesis/schemathesis run https://example.schemathesis.io/openapi.json