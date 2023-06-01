
cd "../"; 
cd "../";
cd "Dockers_file"; 

echo "==================================== Stopping and deleting old docker container =========================================";

docker stop $(docker ps -f name=project_name_docker_container -q);
docker rm project_name_docker_container;

echo "================================ building project_name_docker_base_image image =====================================";

docker image build -f "./project_name_docker_base_image/Dockerfile" -t project_name_docker_base_image .;

cd .. ;
cd "execute" ;
cd "Linux";

echo "============================================== Completed ================================================";
echo ********************************************************************************************;