# menggunakan base image nodejs versi 14
FROM node:14

# set working directory ke /app
WORKDIR /app

# manyalin seluruh source code ke working directory
COPY . .

# set environment variable
ENV NODE_ENV=production
ENV DB_HOST=item-db

# install dependencies dan build code
RUN npm install --production --unsafe-perm && npm run build

# ekspose port 8080
EXPOSE 8080

# jalankan aplikasi
CMD ["npm", "start"]