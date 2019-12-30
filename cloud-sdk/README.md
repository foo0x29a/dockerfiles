# foo0x29a/cloud-sdk

Cloud-SDK

## Usage

```
$ docker run \
  -it \
  --volume /PATH/TO/SERVICE_ACCOUNT.json:/DOCKER/PATH/TO/SERVICE_ACCOUNT.json \ 
  --env GOOGLE_CREDENTIALS=/DOCKER/PATH/TO/SERVICE_ACCOUNT.json \
  --env GOOGLE_PROJECT=$PROJECT_ID 
  foo0x29a/cloud-sdk \
  $COMMAND
```

## Example

### Create bucket

The following command will create a bucket named `foo-bucket` in the project `foo-project`

```
$ docker run \
  -it --volume /PATH/TO/SERVICE_ACCOUNT.json:/tmp/credentials.json \
  --env GOOGLE_CREDENTIALS=/tmp/credentials.json \
  --env GOOGLE_PROJECT=foo-project \
  foo0x29a/cloud-sdk \
  gsutil mb gs://foo-bucket
```
