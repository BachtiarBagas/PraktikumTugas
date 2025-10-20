# Gunakan image Nginx resmi sebagai base image
FROM nginx:alpine

# Hapus file default bawaan Nginx (opsional)
RUN rm -rf /usr/share/nginx/html/*

# Salin semua file HTML (dan aset lain seperti CSS/JS) ke folder web Nginx
COPY . /usr/share/nginx/html

# Buka port 80 untuk akses HTTP
EXPOSE 80

# Jalankan Nginx di foreground
CMD ["nginx", "-g", "daemon off;"]
