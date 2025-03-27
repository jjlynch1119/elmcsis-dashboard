# elmcsis-dashboard

Capstone project for Elmhurst University - CS475

## Authors

- [Ben Schiewe](https://www.github.com/benschiewe)
- Edgar
- Eric
- Jeremy
- Cris

## Deployment

To deploy this project, you only need Docker installed. Run the following command:

```bash
docker compose up
```

This will build and start the application in a consistent environment.
This also starts a Postgres DB (port 5432) and a DB dashboard adminer (port 8080). The site is on port [3000](localhost:3000)

## Local Development

For local development (e.g., editing code, using linting, or running scripts), you will need the following installed:

- [Node.js](https://nodejs.org/en)
- [pnpm](https://pnpm.io/installation)

### Using Docker for Development (Recommended)

You can run the application with:

```bash
docker compose up
```

However, editor features like syntax highlighting and linting may not work unless you also install `Node.js` and `pnpm` locally.

### Setting Up the Local Environment

Install dependencies for the editor:

   ```bash
   pnpm install
   ```

This should cover a lot of syntax highlighting, etc. Make sure you also get VSCode extensions

## Dependencies and References

### Dependencies

- [Docker](https://docs.docker.com/desktop/)
- [Node.js](https://nodejs.org/en)
- [pnpm](https://pnpm.io/installation)

### References

- [Next.js](https://nextjs.org/)
- [Auth.js](https://authjs.dev/)
- [shadcn/ui](https://ui.shadcn.com/)
- [Prisma ORM](https://www.prisma.io/)