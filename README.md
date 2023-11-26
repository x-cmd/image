# how to use

```bash
docker run --restart=always -v "$PWD/frp.ini:/data/frp.ini" xcmd/ubu x frp -c /data/frp.ini
```

```bash
docker run --restart=always xcmd/ubu x --token `x token` frp -c l:frp/hq.ini
```

```bash
docker run --restart=always xcmd/ubu x frp -c "$(x hub link --label frp-hq-1 l:frp/hq.ini)"
```

```bash
docker run -v $(x hub which frp.ini):/data/frp.ini --restart=always xcmd/ubu x frp -c /data/frp.ini
```

