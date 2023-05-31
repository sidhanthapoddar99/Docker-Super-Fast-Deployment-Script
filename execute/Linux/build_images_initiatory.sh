

cd "../"; 
cd "../";

cd "Dockers_file"; 

echo "==================================== Stopping and deleting old docker container =========================================";

docker stop $(docker ps -f name=project_name_docker_container -q);
docker rm project_name_docker_container;

echo "=================================== building project_name_docker_image image ==========================================";

docker build --progress=plain -f "./project_name_docker_image_initiatory/Dockerfile" -t project_name_docker_image .;

echo "================================ building project_name_docker_image_backup image =====================================";

docker image build -f "./project_name_docker_image_backup/Dockerfile" -t project_name_docker_image_backup .;

# echo ===================================== building nginx ============================================
# echo . 
# cd nginx
# # docker image build -t nginx .
# cd ../
# pause
echo *;
cd .. ;
cd "execute" ;
cd "Linux";
echo *;
echo "============================================== Completed ================================================";
echo ********************************************************************************************;