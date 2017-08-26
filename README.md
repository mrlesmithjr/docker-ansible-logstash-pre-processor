# Info

Within this folder we will build our customized [Logstash](https://www.elastic.co/products/logstash)
image. We will be adding some custom configurations within the `config/` folder.
We will be creating them as individual purpose built configurations. All of the
configurations within this folder will be copied to into our image in the
`/etc/logstash/conf.d` folder. When [Logstash](https://www.elastic.co/products/logstash)
launches it will load all of the configurations within this folder in order by
numbering them. So for example our inputs `/config/000-inputs.conf` will load first and
our `/config/999-outputs.conf` will load last.

## Building

We also need to make sure to expose our input ports defined in `/config/000-inputs.conf`
within our `Dockerfile`.

Once you have everything configured the way you like you can build the new
[Docker](https://www.docker.com) image.

```bash
docker build -t elk-logstash .
```

This image will be a local [Docker](https://www.docker.com) image.

## Consuming

To consume the default build contained within this repo.

```bash
docker run -d -p 2055:2055/udp -p 5044:5044 -p 10514:10514 -p 10514:10514/udp \
  -e REDIS_SERVER="redis" \
  mrlesmithjr/logstash-pre-processor
```

## License

BSD

## Author Information

Larry Smith Jr.

-   [@mrlesmithjr](https://www.twitter.com/mrlesmithjr)
-   [EverythingShouldBeVirtual](http://everythingshouldbevirtual.com)
-   [mrlesmithjr.com](http://mrlesmithjr.com)
-   mrlesmithjr [at] gmail.com
