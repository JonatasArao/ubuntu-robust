
# 💻 Docker Environment for C Development

## 🚀 Build and Start the Container
```bash
 docker run -it --name $(basename "$(pwd)") \
  -v "$(find ~ -maxdepth 1 -type d -name ".ssh"):/root/.ssh" \
  -v "$(find ~ -maxdepth 1 -type f -name ".gitconfig"):/root/.gitconfig" \
  -v "$(pwd)":/workspace \
  -w /workspace \
  marciodanielll/ubuntu-42:1.1 zsh
```
## 🖥️ Attach Container via Shell
```bash
docker attach $(basename "$(pwd)")
```
## 🖥️ Star Container via Shell
```bash 
docker-compose start $(basename "$(pwd)")
```
## 🖥️ Access the Container via Shell
```bash
docker exec -it $(basename "$(pwd)") /bin/zsh
```

## 🖥️ Remove Containers Shell
```bash
docker container rm $(docker container ls -a -q) -f
```