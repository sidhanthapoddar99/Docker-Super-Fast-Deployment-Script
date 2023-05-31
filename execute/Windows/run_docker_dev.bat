echo off

echo ================================ Stopping and deleting old docker container ==============================

docker stop $(docker ps -f name=Project_Name_Docke_Container -q);
docker rm Project_Name_Docke_Container;
 
echo ============================== running container ======================================

cd ../
cd ../

docker run -e TZ=Asia/Kolkata ^
    -it ^
    --workdir="/Project_Name" ^
    -v "%cd%\Mount1":"/Project_Name/Mount1" ^
    -p 5000:5000 ^
    --name Project_Name_Docke_Container ^
    Project_Name_Docke_Image

@REM Example of running container

@REM docker run -e TZ=Asia/Kolkata ^
@REM     -it ^
@REM     --workdir="/Project_Name/code_mount" ^
@REM     -v "%cd%\code_mount":"/Project_Name/code_mount" ^
@REM     -v "%cd%\data_mount":"/Project_Name/data_mount" ^
@REM     -p 5000:5000 ^
@REM     --name Project_Name_Docke_Container ^
@REM     Project_Name_Docke_Image

cd execute 
cd Windows 