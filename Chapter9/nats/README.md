This contains configuration and scripts for NATS

## Ubuntu Packages

```$ ansible-playbook -k deb-install.yml```

## Docker

Pick the compose file for the type of docker deployment you want to run

```$ docker-compose -f nats-single.yml up```

*NOTE*: jetstream persists data in `./tmp/nats/jetstream`

## Kubernetes
