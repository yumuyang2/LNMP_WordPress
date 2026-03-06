项目简介
本项目基于三台阿里云 ECS（2核4G）构建了一套高可用的 WordPress 电商网站。采用 LNMP 架构，Web 层双节点负载均衡、数据库独立节点，并部署了 Prometheus + Grafana 监控体系。所有组件均容器化运行，便于扩展和维护。

架构设计
机器A（Web节点1 + 负载均衡器）

nginx-web：处理 PHP 请求，监听 8080 端口，通过 FastCGI 转发到本地 php74 容器

nginx-lb：Nginx 负载均衡器，监听 80 端口，将流量分发到两台 Web 节点（nginx-web 的 8080 端口和机器B的 80 端口）

php74：PHP-FPM 容器，运行 WordPress 应用

prometheus + grafana：监控中心，采集各节点指标

机器B（Web节点2）

nginx：处理 PHP 请求，监听 80 端口，通过 FastCGI 转发到本地 php74 容器

php74：PHP-FPM 容器，运行 WordPress 应用

机器C（数据库节点）

mysql8：MySQL 8.0 数据库，存储 WordPress 数据

技术栈
容器化：Docker + Docker Compose

Web服务：Nginx 1.21 + PHP 7.4-fpm（WordPress）

数据库：MySQL 8.0

负载均衡：Nginx（反向代理 + upstream）

监控：Prometheus + Node Exporter + Grafana

自动化：Ansible（可选，一键部署）

版本控制：Git
