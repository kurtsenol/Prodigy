# Build the Docker image
```
docker build . -t prodigy
```
# Stop the container at background
```
docker container stop prodigy_container
```
# Remove the container at background
```
docker container rm prodigy_container
```
# Start the container at background
```
docker run --name prodigy_container -d -it -p 8080:8080 -v ${PWD}:/work prodigy bash start.sh
```
# See the logs
```
docker logs -f --tail 100 prodigy_container
```