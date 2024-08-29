# 使用alpine作为基础镜像
FROM ubuntu:latest

# 设置工作目录
WORKDIR /app

# 将可执行程序从宿主机复制到容器中的工作目录
COPY ./main main
RUN apt update
RUN apt install ca-certificates
# 设置可执行权限
RUN chmod +x ./main

# 暴露端口3000
EXPOSE 3000

# 运行可执行程序作为容器的启动命令
CMD ["./main"]
