# TrashSupport

A minimal reproduction repository demonstrating a bug with Ecto, Citus, and prepared statements in Elixir/Phoenix applications.


## Prerequisites

- Docker and Docker Compose
- Elixir/Mix installed locally

## Quick Start

1. **Start the database cluster:**
   ```bash
   docker compose up -d
   ```

2. **Install dependencies:**
   ```bash
   mix deps.get
   ```

3. **Run database setup:**
   ```bash
   mix ecto.migrate
   ```

4. **Reproduce the bug:**
   ```bash
   mix test
   ```



## Docker Environment

The `docker-compose.yml` sets up:
- Citus coordinator node
- Citus worker nodes
