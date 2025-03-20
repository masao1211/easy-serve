# Easy-Serve

A simple Docker-based file server using Nginx to serve and list files from your local directory.

## Features

- Easy setup with Docker
- Automatic file listing enabled
- Directory browsing support
- Local time display for files
- Customizable through Nginx configuration

## Quick Start

1. Build the Docker image:
```bash
docker build -t file-server .
```

2. Run the container with a name:
```bash
docker run -d -p 8080:80 -v $(pwd)/src:/usr/share/nginx/html --name file-server-container file-server
```

The container will display instructions on how to access the file server with the appropriate port number.


3. View the container logs to see access instructions:
```bash
docker logs file-server-container
```

4. Access the file server:
   - Open your browser and navigate to the URL shown in the logs (typically `http://localhost:8080`)
   - You should see a list of files from your local `src` directory

## Uninstallation

To stop and remove the container:
```bash
docker rm -f file-server-container
```

To remove the Docker image:
```bash
docker rmi file-server
```

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.