## Using heketi
You can see the default configuration in heketi.json.

Run for testing purpose:

```
$ docker run -p 8080:8080 -d fhardy/heketi
```

With db persistence:

```
$ docker run -p 8080:8080 -d \
  -v $(pwd)/var:/var/lib/heketi \
  fhardy/heketi
```

With settings overwrite:

```
$ docker run -p 8080:8080 -d \
  -v $(pwd)/var:/var/lib/heketi \
  -v $(pwd)/heketi.json:/etc/heketi/heketi.json \
  fhardy/heketi
```

## Using heketi-cli
Using our example above, to use the heketi-cli, you can type:

```
$ sudo docker run --rm -it heketi \
    heketi-cli -h
$ sudo docker run --rm -it heketi \
    heketi-cli --server http://localhost:8080/ cluster list
```

# Build
If you need to build it:

    # docker build -t heketi .

