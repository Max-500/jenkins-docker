# Usa la imagen oficial de Node.js 16.20.2 como imagen base
FROM node:16.20.2

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia los archivos package.json y package-lock.json al directorio de trabajo
COPY package*.json ./

# Instala las dependencias de la aplicación
RUN npm install

# Copia el resto de los archivos de la aplicación al directorio de trabajo
COPY . .

# Expone el puerto 3000 para que pueda ser accesible desde fuera del contenedor
EXPOSE 3000

# Define el comando para ejecutar tu aplicación
CMD ["node", "app.js"]