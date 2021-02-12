#指定需要依赖的基础镜像
FROM openjdk

#作者
MAINTAINER julius <1135061539@qq.com>

# 其效果是在主机 /var/lib/docker 目录下创建了一个临时文件，并链接到容器的/tmp
VOLUME /tmp

#添加文件并重命名
ADD ./jar/lawoffice-server-0.0.1-SNAPSHOT.jar  app.jar

# 运行jar包
ENTRYPOINT ["java","-jar","/app.jar","--spring.profiles.active=proc"]
