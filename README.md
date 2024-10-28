
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

For more Docker commands, visit the [Docker Commands Documentation](https://marciodanielll.github.io/docker_commands/).