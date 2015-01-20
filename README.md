# WordPress

FIT2CLOUD代码部署示例应用。相对于官方源代码，我们增加的文件包括：

1. appspec.yml: 定义应用部署位置、应用部署时要执行的脚本等。
2. scripts目录：存放应用部署时的事件处理脚本。
3. pom.xml和assemble.xml：如果用户使用Nexus/Artifactory作为存储仓库，这两个文件定义artifactId/groupId, 仓库地址，zip包中包括的内容等。

Nexus repository信息：

1. 仓库地址：http://repository-proxy.fit2cloud.com:8080/content/repositories/releases/
2. groupId: com.fit2cloud.example
3. artifactId: wordpress

Aliyun oss访问信息：http://f2c.oss-cn-hangzhou.aliyuncs.com/WordPress/wordpress-4.2-bin-201501201026-10.zip

