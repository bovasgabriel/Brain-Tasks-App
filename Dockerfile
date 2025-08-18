FROM nginx:alpine
# copy built app
COPY dist/ /usr/share/nginx/html
# change default nginx port 80 -> 3000
RUN sed -i 's/listen       80;/listen       3000;/' /etc/nginx/conf.d/default.conf
EXPOSE 3000
CMD ["nginx", "-g", "daemon off;"]
