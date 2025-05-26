# Utiliser une image officielle de Python comme image de base
FROM python:3.10-slim

# Définir le répertoire de travail dans le conteneur
WORKDIR /app

# Copier les fichiers du projet dans le conteneur
COPY . .

# Installer les dépendances
RUN pip install --no-cache-dir -r requirements.txt

# Exposer le port utilisé par l’application Flask
EXPOSE 5000

# Définir la commande par défaut pour exécuter l’application
CMD ["python", "todo.py"]
