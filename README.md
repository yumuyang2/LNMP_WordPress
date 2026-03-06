项目名称：三节点高可用 WordPress 电商网站部署 项目概述 本项目基于阿里云 ECS（2核4g）构建了一套高可用的 WordPress 电商网站，采用 LNMP 架构，实现 Web 层双节点负载均衡、数据库独立节点，并部署了 Prometheus + Grafana 监控体系。所有组件均容器化运行，便于扩展和维护。

架构设计

机器A（172.26.51.246）：Web节点1 + 负载均衡器 nginx-web：处理 PHP 请求（端口 8080） nginx-lb：负载均衡器，分发流量到两台 Web 节点（端口 80） php74：PHP-FPM 容器 prometheus + grafana：监控中心

机器B（172.26.51.247）：Web节点2 nginx：处理 PHP 请求（端口 80） php74：PHP-FPM 容器

机器C（172.26.51.248）：数据库节点 mysql8：MySQL 8.0 数据库

技术栈 容器化：Docker + Docker Compose Web服务：Nginx 1.21 + PHP 7.4-fpm 数据库：MySQL 8.0 负载均衡：Nginx（反向代理 + upstream） 监控：Prometheus + Node Exporter + Grafana 自动化：Ansible（可选，可一键部署） 版本控制：Git
