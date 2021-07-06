#./utils/launch.sh --vnc 172.16.50.62:5900
kill -9 `lsof -t -i:6080`
kill -9 `lsof -t -i:8888`

echo "EXEMPLO ACESSO  ==============================================================================="
ip="$(hostname -I | awk '{print $1}')"
echo "Link exemplo http://"$ip":8888/vnc_lite.html?host="$ip"&port=6080&path=websockify/?token=35075"
echo "==============================================================================================="

cd ./utils
./launch.sh --listen 8888 &
cd websockify
./run --token-plugin TokenFile --token-source ./token/ 6080 


