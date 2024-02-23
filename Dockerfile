# 使用 nginx 作为基础镜像
FROM nginx:alpine

# 将当前目录下的 index.html 复制到 nginx 默认的 html 目录下
# COPY index.html /usr/share/nginx/html
COPY *.html /usr/share/nginx/html

# 如果您的项目需要 CSS 文件，取消下一行的注释，并将 css 目录中的文件复制到 nginx 默认的 html 目录下
COPY static /usr/share/nginx/html/static

# 如果您的项目需要其他静态资源文件，可以使用类似的方式将它们复制到 nginx 默认的 html 目录下

# 暴露 80 端口
EXPOSE 80

# 设置启动命令为 nginx
CMD ["nginx", "-g", "daemon off;"]
