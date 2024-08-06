
# MySQL Docker Setup

This repository provides a simple setup to run a MySQL container using Docker and Docker Compose.

## Prerequisites

- Docker installed on your machine
- Docker Compose installed

## Configuration

The `docker-compose.yml` file contains the configuration to set up a MySQL container with the following details:

- **Container Name:** `mysql_container_1`
- **MySQL Root Password:** `mysql`
- **Ports:** `3306` (MySQL default) exposed on `5000` on the host machine
- **Volumes:**
  - Local directory `~/mysql` is mounted to `/var/lib/mysql` in the container. This is where MySQL data is stored persistently on your local machine.

## How to Run

1. **Clone the Repository**:
   ```sh
   git clone <repository-url>
   cd <repository-directory>
   ```

2. **Start the MySQL Container**:
   ```sh
   docker-compose up -d
   ```
   The `-d` flag runs the container in detached mode, meaning it will run in the background.

3. **Check the Container Status**:
   ```sh
   docker ps
   ```
   This will display the running containers. You should see `mysql_container_1` in the list.

4. **Stop the MySQL Container**:
   ```sh
   docker-compose down
   ```
   This command stops and removes the container along with the network created by Docker Compose.

## Accessing MySQL

You can connect to the MySQL database using the following details:

- **Host:** `localhost`
- **Port:** `5000`
- **Username:** `root`
- **Password:** `mysql`

## Notes

- The MySQL data is stored persistently in the `~/mysql` directory on your local machine.
- Ensure the port `5000` is available on your machine, or change it to another port if needed.
