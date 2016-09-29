Info
====

Within this folder we will build our customized [Logstash] image. We will be
adding some custom configurations within the `config/` folder. We will be
creating them as individual purpose built configurations. All of the configurations
within this folder will be copied to into our image in the `/etc/logstash/conf.d`
folder. When [Logstash] launches it will load all of the configurations within
this folder in order by numbering them. So for example our inputs `/config/000-inputs.conf`
will load first and our `/config/999-outputs.conf` will load last.

Building
--------
We also need to make sure to expose our input ports defined in `/config/000-inputs.conf`
within our `Dockerfile`.

Once you have everything configured the way you like you can build the new
[Docker] image.
```
docker build -t elk-logstash .
```

This image will be a local [Docker] image.

Consuming
---------
To consume the default build contained within this repo.
```
docker run -d -p 5044:5044 -p 10514:10514 -p 10514:10514/udp \
  -e REDIS_SERVER="redis" \
  mrlesmithjr/logstash-pre-processor
```

License
-------

BSD

Author Information
------------------

Larry Smith Jr.
- [@mrlesmithjr]
- [everythingshouldbevirtual.com]
- [mrlesmithjr@gmail.com]


[Ansible]: <https://www.ansible.com/>
[Docker]: <https://www.docker.com>
[ELK Stack]: <https://www.elastic.co/products>
[Logstash]: <https://www.elastic.co/products/logstash>
[@mrlesmithjr]: <https://twitter.com/mrlesmithjr>
[everythingshouldbevirtual.com]: <http://everythingshouldbevirtual.com>
[mrlesmithjr@gmail.com]: <mailto:mrlesmithjr@gmail.com>
