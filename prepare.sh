mkdir /root/pipeline/selenoid
mkdir /root/pipeline/selenoid/config
mkdir /root/pipeline/selenoid/video
mkdir /root/pipeline/selenoid/logs
mkdir /root/pipeline/jenkins_home
mkdir /root/pipeline/portainer
mkdir /root/pipeline/portainer/data
mv browsers.json /root/pipeline/selenoid/config/

ip=$(ifconfig eth1 | grep 'inet addr:' | cut -d: -f2| cut -d' ' -f1)
ipdash=$(echo $ip | sed 's/\./-/g')
SELENOIDIP="ip$ipdash-$SESSION_ID-4444.direct.$PWD_HOST_FQDN"
echo SELENOIDIP: $SELENOIDIP
export SELENOIDIP
docker pull selenoid/vnc:chrome_74.0
