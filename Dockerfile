FROM nginx:stable

# Удаляем стандартный конфиг
RUN rm /etc/nginx/conf.d/default.conf

# Копируем собственный
COPY nginx/conf.d/nginx.conf /etc/nginx/conf.d/nginx.conf
COPY nginx/nginx.conf /etc/nginx/nginx.conf

EXPOSE 80 443

CMD ["nginx", "-g", "daemon off;"]
