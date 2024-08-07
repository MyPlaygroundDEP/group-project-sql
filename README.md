```markdown
# MySQL Container Setup with Docker Compose

This guide explains how to set up a MySQL container using Docker Compose, connect to it via MySQL command-line client, and run MySQL scripts.

## Step 1: Clone the Repository

Clone the repository to your local machine:

```bash
git clone https://github.com/MyPlaygroundDEP/group-project-sql.git
cd group-project-sql
```

## Step 2: Start the MySQL Container

To start the MySQL container, ensure Docker is running and execute the following command:

```bash
docker-compose up
```

This command will:

- Start the MySQL container named `mysql_container_1`.
- Map the container's MySQL port `3306` to port `5000` on the host.
- Store MySQL data in the `~/mysql` directory on the host.

## Step 3: Connect to the MySQL Database

You can connect to the MySQL database using the MySQL command-line client. Run:

```bash
mysql -h 127.0.0.1 -P 5000 -u root -pmysql
```

- **-h 127.0.0.1:** Specifies the hostname (localhost).
- **-P 5000:** Specifies the port number (5000).
- **-u root:** Specifies the username (root).
- **-pmysql:** Specifies the password (mysql).

## Step 4: Run MySQL Scripts

To execute a MySQL script, use the following command:

```bash
mysql -h 127.0.0.1 -P 5000 -u root -pmysql < /path/to/your/create_database.sql
```

Replace `/path/to/your/create_database.sql` with the actual path to your `.sql` file. This command connects to the MySQL server and executes the SQL commands in your script.

## Step 5: Create a Database Using MySQL Client

Once connected to the MySQL client, you can create a new database with the following command:

```sql
CREATE DATABASE my_database;
```

Replace `my_database` with your desired database name.

## Step 6: Stop the Container

To stop the container, run:

```bash
docker-compose down
```

This command stops and removes the container but keeps the data stored in `~/mysql`.

## Additional Information

- **Volumes:** MySQL data is persisted in the `~/mysql` directory on your local machine. This ensures that your data remains even if the container is stopped or removed.
- **Ports:** The MySQL service in the container is accessible on port `5000` of the host machine.

