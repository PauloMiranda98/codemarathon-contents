FROM ubuntu
RUN apt-get update
RUN apt-get install nginx -y
RUN ln -s /codemarathon-contents/contents/ /var/www/html/
RUN ln -s /codemarathon-contents/problems/ /var/www/html/
RUN ln -s /codemarathon-contents/images/ /var/www/html/
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]