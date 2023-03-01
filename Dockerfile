# menggunakan base image dari node dengan versi 14
FROM node:14

# menentukan working directory pada /app
WORKDIR /app
# menyalin seluruh source code ke working directory container
COPY . .
# membuat environment variable untuk menentukan agar aplikasi berjalan dalam production mode 
# dan menggunakan container bernama item-db sebagai database host
ENV NODE_ENV=production DB_HOST=item-db
# menginstal dependencies untuk production dan kemudian build aplikasi
RUN npm install --production --unsafe-perm && npm run build
# mengekspos port yang digunakan oleh aplikasi pada port 8080
EXPOSE 8080
# menjalankan server
CMD ["npm", "start"]