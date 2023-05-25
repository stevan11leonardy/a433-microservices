# menggunakan base image nodejs versi 14
FROM node:14-alpine

# set working directory ke /app
WORKDIR /app

# manyalin seluruh source code ke working directory
COPY . .

# install dependencies dan build code
RUN npm install --production --unsafe-perm

# ekspose port 3000
EXPOSE 3000

# jalankan aplikasi
CMD ["npm", "start"]