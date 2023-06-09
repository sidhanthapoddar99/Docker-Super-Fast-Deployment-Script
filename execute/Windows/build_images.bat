@echo off

cd ../
cd ../
cd Dockers_file

echo ================================ Stopping and deleting old docker container ==============================

docker stop $(docker ps -f name=project_name_docker_container -q);
docker rm project_name_docker_container;

echo ================================ building project_name_docker_image image ======================================

docker build --progress=plain -f "./project_name_docker_image/Dockerfile" -t project_name_docker_image .

cd ../
cd execute 
cd Windows 

@REM echo ===================================== building nginx ============================================
@REM echo . 
@REM cd nginx
@REM @REM docker image build -t flask_nginx .
@REM cd ../

@REM pause


echo .
echo .
echo ===================================== Completed ============================================
echo ********************************************************************************************
