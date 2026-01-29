# ==========================
# STAGE 1: BUILD
# ==========================
FROM node:22-alpine AS builder

WORKDIR /app

# Copiamos dependencias primero (mejor cache)
COPY package*.json ./
RUN npm ci

# Copiamos el resto del código
COPY . .

# Compilamos TypeScript → JavaScript
RUN npm run build


# ==========================
# STAGE 2: RUNTIME
# ==========================
FROM node:22-alpine

WORKDIR /app

ENV NODE_ENV=production
ENV NODE_OPTIONS=--max-old-space-size=512

# Solo lo necesario para correr
COPY --from=builder /app/dist ./dist
COPY --from=builder /app/node_modules ./node_modules
COPY package*.json ./

EXPOSE 3000

CMD ["node", "dist/main.js"]
