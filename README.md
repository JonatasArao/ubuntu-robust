
# 💻 Docker Environment for C Development

This project leverages Docker to create an isolated environment for C development, with all necessary tools to efficiently compile and test code. Follow the instructions below to set up and manage the Docker environment.

## 🛠️ **Quick Start Guide**

### 🚀 Build and Start the Container 
Build and run the container with relevant files and configurations.
```bash
docker run -it --name $(basename "$(pwd)") \
  -v "$(find ~ -maxdepth 1 -type d -name ".ssh"):/root/.ssh" \
  -v "$(find ~ -maxdepth 1 -type f -name ".gitconfig"):/root/.gitconfig" \
  -v "$(pwd)":/workspace \
  -w /workspace \
  marciodanielll/ubuntu-42:1.1 zsh
```

### 🛠️ Create, Run, and Attach to the Container
To create, run, and immediately attach to the container, use:
```bash
docker create --name $(basename "$(pwd)") \
  -v "$(find ~ -maxdepth 1 -type d -name ".ssh"):/root/.ssh" \
  -v "$(find ~ -maxdepth 1 -type f -name ".gitconfig"):/root/.gitconfig" \
  -v "$(pwd)":/workspace \
  -w /workspace \
  marciodanielll/ubuntu-42:1.1 zsh && docker start -ai $(basename "$(pwd)")
```

### 🔄 Build Image Without Cache
Use this option to ensure the image is built from scratch, bypassing previous cache.
```bash
docker build --platform linux/amd64 --no-cache -t marciodanielll/ubuntu-42:1.1 .
```

### 🧷 Attach to the Running Container
Attach to the running container.
```bash
docker attach $(basename "$(pwd)")
```

### 🖥️ Start the Container via Shell
Start the container using Docker Compose.
```bash
docker-compose start $(basename "$(pwd)")
```

### 🖥️ Access the Container via Shell
Access the container interactively.
```bash
docker exec -it $(basename "$(pwd)") /bin/zsh
```

### 🧹 Remove All Containers
Remove all stopped containers.
```bash
docker container rm $(docker container ls -a -q) -f
```

For more Docker commands, visit the [Docker Commands Documentation](https://marciodanielll.github.io/docker_commands/).