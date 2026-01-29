<p align="center">
  <a href="http://nestjs.com/" target="blank"><img src="https://nestjs.com/img/logo-small.svg" width="120" alt="Nest Logo" /></a>
</p>

# Ejecutar en Desarrollo

1. Clonar el proyecto
2.Ejecutar
```bash
 yarn install
 ```

3. Tener Nest CLI instalado
  ```bash
  npm install -g @nestjs/cli
  ```

4. Levantar la base de datos
  ```bash
  docker-compose up -d
  ```


5. Clonar el archivo __.env.template__ y renombrarlo a _.env_

6. Llenar los datos en el archivo _.env_

7. Ejecutar el proyecto
   ```bash
   yarn run start:dev
   ``` 
   
8. Reconstruir la base de datos con la seed
    ```bash
    http://localhost:3000/api/v2/seed
    ```

# Stack Usado
- NestJS
- MongoDB
- Docker