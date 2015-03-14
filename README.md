# phantomjs
A Docker image build of PhantomJS from source

# Usage

```bash
docker run -ti bcicen/phantomjs:latest --help
```

or if you prefer to build the image yourself:
```bash
git clone https://github.com/bcicen-docker/phantomjs.git
cd phantomjs/
docker build -t phantomjs .
docker run -ti phantomjs
```
