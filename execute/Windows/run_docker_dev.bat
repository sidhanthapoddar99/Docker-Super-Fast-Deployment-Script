echo off

echo ================================ Stopping and deleting old docker container ==============================

docker stop $(docker ps -f name=project_name_docker_container -q);
docker rm project_name_docker_container;
 
echo ============================== running container ======================================

cd ../
cd ../

docker run -e TZ=Asia/Kolkata ^
    -it ^
    --workdir="/project_name" ^
    -v "%cd%\Mount1":"/project_name/Mount1" ^
    -p 5000:5000 ^
    --name project_name_docker_container ^
    project_name_docker_image

@REM Example of running container

@REM docker run -e TZ=Asia/Kolkata ^
@REM     -it ^
@REM     --workdir="/project_name/code_mount" ^
@REM     -v "%cd%\code_mount":"/project_name/code_mount" ^
@REM     -v "%cd%\data_mount":"/project_name/data_mount" ^
@REM     -p 5000:5000 ^
@REM     --name project_name_docker_container ^
@REM     project_name_docker_image

cd execute 
cd Windows 