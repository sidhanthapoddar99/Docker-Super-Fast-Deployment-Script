@echo off

cd ../
cd ../

cd Dockers_file

echo ================================ Stopping and deleting old docker container ==============================

docker stop $(docker ps -f name=project_name_docker_container -q);
docker rm project_name_docker_container;

echo ================================ building project_name_docker_image image ======================================

docker build --progress=plain -f "./project_name_docker_image_initiatory/Dockerfile" -t project_name_docker_image .

echo ================================ building project_name_docker_image_backup image ======================================

docker image build -f "./project_name_docker_image_backup/Dockerfile" -t project_name_docker_image_backup .

@REM echo ===================================== building nginx ============================================
@REM echo . 
@REM cd nginx
@REM @REM docker image build -t flask_nginx .
@REM cd ../

@REM pause

cd ../

cd execute
cd Windows  

echo .
echo .
echo ===================================== Completed ============================================
echo ********************************************************************************************
