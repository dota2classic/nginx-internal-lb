FROM nginx:stable

# Удаляем стандартный конфиг
RUN rm /etc/nginx/conf.d/default.conf

# Копируем собственный
COPY nginx.conf /etc/nginx/conf.d/nginx.conf

EXPOSE 80 443

CMD ["nginx", "-g", "daemon off;"]
