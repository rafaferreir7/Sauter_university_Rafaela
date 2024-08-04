FROM nginx:alpine

# Cria o diretório onde os arquivos HTML serão armazenados
RUN mkdir -p /usr/share/nginx/html

# Copia o arquivo HTML e a imagem para o diretório do Nginx
COPY index.html /usr/share/nginx/html/index.html
COPY logo.png /usr/share/nginx/html/logo.png

# Expõe a porta 80 para acesso ao serviço web
EXPOSE 80

# Define o comando padrão para iniciar o Nginx
CMD ["nginx", "-g", "daemon off;"]
