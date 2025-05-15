FROM node:20-alpine

WORKDIR /app

RUN apk add --no-cache build-base python3

# Copier le code
COPY . .

RUN npm install --production

# Créer le dossier de config
RUN mkdir -p /app/data

EXPOSE 3001

CMD ["node", "server/server.js"]
