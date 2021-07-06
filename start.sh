#./utils/launch.sh --vnc 172.16.50.62:5900
kill -9 `lsof -t -i:6080`
kill -9 `lsof -t -i:8888`

echo "Link exemplo http://localhost:8888/vnc_lite.html?host=localhost&port=6080&path=websockify/?token=target1"
cd ./utils
./launch.sh --listen 8888 &
cd websockify
./run --token-plugin TokenFile --token-source ./token/ 6080 


