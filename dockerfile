# imagem base, normalmente usamos a do node neste caso, mas pode ser ubuntu ou qualquer outro sistema operacional
FROM node:lts

# Cria uma pasta para a aplicação
RUN mkdir /usr/app

# Define a pasta da aplicação como a pasta de trabalho
WORKDIR /usr/app

# Configura variáveis de ambiente
ENV NODE_ENV='production'

# copia o package.json e instala as dependências
COPY package*.json ./
RUN npm install

# Copia o código da aplicação para a pasta certa
COPY . .

# Expôe a porta 3000 (interno da imagem/container)
EXPOSE 3000

# Por fim roda a aplicação
CMD ["npm", "start"]