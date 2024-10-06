# Create and Run the Docker Image `ubuntu-robust`

Open the terminal and navigate to the directory where the `Dockerfile` is already created. Run the following commands to build the image and run the container:

# Build the Docker image
```bash
docker build -t ubuntu-robust .
```

# Run the Docker container with a shared volume
```bash
docker run -it --name ubuntu-robust -e USER=$(whoami) -v /home/$(whoami):/home/neo ubuntu-robust
```