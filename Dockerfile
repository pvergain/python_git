# dockerfile
#
# building python  with git and pandoc support
FROM python:3.9.6-slim-buster as builder

# we need git
RUN apt-get update \
    && pip install -U pip wheel \
    && apt-get -y install git pandoc --no-install-recommends \
    && rm -rf /var/lib/apt/lists/*

# ENV PYTHONUNBUFFERED 1 : this statement means that Docker won’t buffer
# the output from your application; instead, you will get to see your
# output in your console the way you’re used to.
ENV PYTHONUNBUFFERED 1

## for debug purpose if there are problems
CMD ["sleep", "10000000000"]
