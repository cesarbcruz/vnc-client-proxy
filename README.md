## Client VNC WEB Proxy
- Configure target in: utils/websockify/token/token.conf
- execute: ./start.sh
- or create image docker: ./create-image-docker.sh
- and execute: docker run -it vnc-client
- Access example URL: http://<ip_container>:8888/vnc_lite.html?host=<ip_container>&port=6080&path=websockify/?token=35075
