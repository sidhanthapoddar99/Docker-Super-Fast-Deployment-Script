@echo off

cd ../
cd ../

cd Dockers_file

echo ================================ Stopping and deleting old docker container ==============================

docker stop $(docker ps -f name=Project_Name_Docke_Container -q);
docker rm Project_Name_Docke_Container;

echo ============================== building ubuntu image ======================================

cd ubuntu_image
docker image build -t ubuntu_image .
cd ../

echo ================================ building Project_Name_Docke_Image image ======================================

docker build --progress=plain -f "./Project_Name_Docke_Image_initiatory/Dockerfile" -t Project_Name_Docke_Image .

echo ================================ building Project_Name_Docke_Image_backup image ======================================

docker image build -f "./Project_Name_Docke_Image_backup/Dockerfile" -t Project_Name_Docke_Image_backup .

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