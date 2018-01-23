# docker-khard
a dockerized hhard WITHOUT any synchronize backend. If you want to synchronize with a CalDAV Server I recommend [vdirsyncer](https://github.com/pimutils/vdirsyncer)

## usage

```
docker run -it -v $PWD/khard.conf:/root/.config/khard/khard.conf -v /path/to/vdirsyncer/contact/directory:/data khard
```
