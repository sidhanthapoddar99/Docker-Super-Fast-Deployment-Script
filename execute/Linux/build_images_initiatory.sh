

cd "../"; 
cd "../";

cd "Dockers_file"; 

echo "==================================== Stopping and deleting old docker container =========================================";

docker stop $(docker ps -f name=Project_Name_Docke_Container -q);
docker rm Project_Name_Docke_Container;

echo "======================================== building ubuntu image ===========================================";

cd "ubuntu_image";
docker image build -t ubuntu_image .;
cd "..";

echo "=================================== building Project_Name_Docke_Image image ==========================================";

docker build --progress=plain -f "./Project_Name_Docke_Image_initiatory/Dockerfile" -t Project_Name_Docke_Image .;

echo "================================ building Project_Name_Docke_Image_backup image =====================================";

docker image build -f "./Project_Name_Docke_Image_backup/Dockerfile" -t Project_Name_Docke_Image_backup .;

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