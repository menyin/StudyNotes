setlocal EnableDelayedExpansion
set mysqlVersion=7.0
set gatewayVersion=7.0
set systemVersion=7.0
set nacosVersion=7.0
set demoVersion=7.0

(
docker login --username=845257580@qq.com registry.cn-hangzhou.aliyuncs.com || exit /b

docker tag jeecg-server-cloud-jeecg-boot-mysql registry.cn-hangzhou.aliyuncs.com/namespace-cny/jeecg-mysql:!mysqlVersion! || exit /b
docker push registry.cn-hangzhou.aliyuncs.com/namespace-cny/jeecg-mysql:!mysqlVersion! || exit /b

docker tag jeecg-server-cloud-jeecg-boot-gateway registry.cn-hangzhou.aliyuncs.com/namespace-cny/jeecg-gateway:!gatewayVersion! || exit /b
docker push registry.cn-hangzhou.aliyuncs.com/namespace-cny/jeecg-gateway:!gatewayVersion! || exit /b

docker tag jeecg-server-cloud-jeecg-boot-system registry.cn-hangzhou.aliyuncs.com/namespace-cny/jeecg-system:!systemVersion! || exit /b
docker push registry.cn-hangzhou.aliyuncs.com/namespace-cny/jeecg-system:!systemVersion! || exit /b

docker tag jeecg-server-cloud-jeecg-boot-nacos registry.cn-hangzhou.aliyuncs.com/namespace-cny/jeecg-nacos:!nacosVersion! || exit /b
docker push registry.cn-hangzhou.aliyuncs.com/namespace-cny/jeecg-nacos:!nacosVersion! || exit /b

docker tag jeecg-server-cloud-jeecg-boot-demo registry.cn-hangzhou.aliyuncs.com/namespace-cny/jeecg-demo:!demoVersion! || exit /b
docker push registry.cn-hangzhou.aliyuncs.com/namespace-cny/jeecg-demo:!demoVersion! || exit /b
)

endlocal
