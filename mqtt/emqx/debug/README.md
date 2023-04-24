# Debugging EQMX

To start a local debug instance of eqmx, run the following command from
this directory:

```bash
docker run --network=host --env-file=eqmx.env.debug --name mqtt -v $(pwd)/api_keys.txt:/tmp/bootstrap/api_keys.txt emqx:5
```