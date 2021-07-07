## Client VNC WEB Proxy
- Configure target in: utils/websockify/token/token.conf
- execute: ./start.sh
- or create image docker: ./create-image-docker.sh
- and execute: docker run -it vnc-client
- Access example URL: http://<ip_container>:8888/vnc_lite.html?host=<ip_container>&port=6080&path=websockify/?token=35075


## PUSH IMAGE DOCKER HUB
-- docker login
-- docker build -t cesarbcruz/vnc-client .
-- docker push cesarbcruz/vnc-client:latest

## DEPLOY CLOUD FOUNDRY
-- cf create-app <app_name> --app-type docker
-- CF_DOCKER_PASSWORD=<senha_docker_io> cf push <app_name> --docker-image cesarbcruz/vnc-client:latest -k 2G
-- cf app <app_name> --guid
-- cf curl /v2/apps/<guid> -X PUT -d '{"ports": [8888,6080]}'
-- cf curl /v2/routes?q=host:<app_name>
-- cf curl /v2/route_mappings -X POST -d '{"app_guid": "APP-GUID", "route_guid": "ROUTE-GUID", "app_port": 8888}' 
-- cf curl /v2/route_mappings -X POST -d '{"app_guid": "APP-GUID", "route_guid": "ROUTE-GUID", "app_port": 6080}' 
 


