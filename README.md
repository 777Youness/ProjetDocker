# Projet Todo App avec Docker

## Stack Technique

- **Frontend**: Angular
- **Backend**: Flask (Python)
- **Base de données**: MySQL
- **Proxy inverse**: Nginx
- **Administration de base de données**: PHPMyAdmin
- **Service IA**: TensorFlow

## Prérequis

- Docker
- Docker Compose

## Configuration

1. Clonez le dépôt :
   ```sh
   git clone https://github.com/<votre_nom_utilisateur>/<nom_du_depot>.git
   cd <nom_du_depot>
```
2. Créez un fichier `.env` à la racine du projet et ajoutez les variables d'environnement nécessaires :
  ```sh
  cp .env.example .env
  ```

3. Construisez et démarrez les conteneurs Docker :
  ```sh
  docker-compose up --build
  ```

4. Accédez à l'application :
  - Frontend : `http://localhost:4200`
  - Backend : `http://localhost:5000`
  - PHPMyAdmin : `http://localhost:8080`

## Utilisation

- Pour arrêter les conteneurs Docker :
  ```sh
  docker-compose down
  ```

- Pour reconstruire les conteneurs Docker :
  ```sh
  docker-compose up --build
  ```

