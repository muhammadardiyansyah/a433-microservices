# Mengunduh/mengambil base image
FROM node:14

# Membuat directory baru bernama app dan menjadikannya sebagai working directory
WORKDIR /app

# Menyalin semua berkas yang ada di local working directory ke container working directory
COPY . .

# Menentukan aplikasi berjalan dalam mode production dan menggunakan container item-db sebagai database host
ENV NODE_ENV=production DB_HOST=item-db

# Menginstall dependencies untuk production dan membuild aplikasi
RUN npm install --production --unsafe-perm && npm run build

# Mengekspos atau membuka port pada aplikasi di port 8080
EXPOSE 8080

# Menjalankan server dengan perintah npm start
CMD [ "npm", "start" ]