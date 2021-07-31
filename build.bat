@echo off

echo Building 1.12.2
docker build ../McServer -t mcserver:1.12.2
docker image tag mcserver:1.12.2 aktheportal/mcserver:1.12.2
echo Done building 1.12.2


echo Building 1.17.1
docker image build 1.17 -t mcserver:1.17.1
docker image tag mcserver:1.17.1 aktheportal/mcserver:1.17.1
echo Done building 1.17.1

echo Uploading to Docker Hub
docker push aktheportal/mcserver:1.12.2
docker push aktheportal/mcserver:1.17.1


echo Done