## Prerequisites

Make sure you have the following installed before proceeding:

- [Docker](https://www.docker.com/products/docker-desktop)
- [Docker Compose](https://docs.docker.com/compose/)

## Getting Started

### Clone the Repository

Start by cloning the repository to your local machine:

```bash
git clone https://github.com/daulet-omarov/snippetbox
cd snippetbox```

### Run the Application with Docker Compose

To build and run the application using Docker Compose, execute the following command:

```bash
docker-compose up --build```

This will:

- Build the Docker images as defined in the `docker-compose.yml` file.
- Start all the necessary containers and services.

### Stopping the Containers

To stop the running application, use:

```bash
docker-compose down```
