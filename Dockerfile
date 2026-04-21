# Utilisation d'une image Node.js allégée
FROM node:18-alpine

# Définition du répertoire de travail dans le conteneur
WORKDIR /app

# Copie des fichiers de définition des dépendances
COPY package*.json ./

# Installation des dépendances (express)
RUN npm install

# Copie du code source de l'application
COPY app.js .

# L'application écoute sur le port 3000 (documentation)
EXPOSE 3000

# Commande de démarrage de l'application
CMD ["npm", "start"]