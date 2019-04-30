mkdir /root/pipeline/selenoid
mkdir /root/pipeline/selenoid/config
mkdir /root/pipeline/selenoid/video
mkdir /root/pipeline/selenoid/logs
mkdir /root/pipeline/jenkins_home
mkdir /root/pipeline/portainer
mkdir /root/pipeline/portainer/data
mv browsers.json /root/pipeline/selenoid/config/
docker pull selenoid/vnc:chrome_74.0
