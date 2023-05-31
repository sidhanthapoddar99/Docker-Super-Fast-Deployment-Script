

echo "==================================== Stopping and deleting old docker container =========================================";

docker stop $(docker ps -f name=Project_Name_Docke_Container -q);
docker rm Project_Name_Docke_Container;

echo "============================================ running container ===========================================================";

cd "../";
cd "../";

docker run -e TZ=IST  \
    -it \
    --workdir="/Project_Name" \
    -v "$(pwd)/Mount1":"/Project_Name/Mount1" \ 
    -p 2000:5000 \
    --name Project_Name_Docke_Container \
    Project_Name_Docke_Image;

### Example: ###

# docker run -e TZ=IST  \
#     -it \
#     --workdir="/Project_Name/code_mount" \
#     -v "$(pwd)/code_mount":"/Project_Name/code_mount" \ 
#     -v "$(pwd)/data_mount":"/Project_Name/data_mount" \
#     -p 2000:5000 \
#     --name Project_Name_Docke_Container \
#     Project_Name_Docke_Image;

cd "execute";
cd "Linux";