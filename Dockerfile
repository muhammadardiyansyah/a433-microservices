# Gunakan Node.js sebagai base image
FROM node:14

# Set working directory di dalam container
WORKDIR /app

# Copy package.json dan package-lock.json ke working directory
COPY package*.json ./

# Install dependencies aplikasi
RUN npm install

# Copy seluruh kode aplikasi
COPY . .

# Port yang akan di-Expose (sesuaikan dengan konfigurasi aplikasi Anda)
EXPOSE 3000

# Command untuk menjalankan aplikasi
CMD ["npm", "start"]
