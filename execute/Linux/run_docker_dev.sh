

echo "==================================== Stopping and deleting old docker container =========================================";

docker stop $(docker ps -f name=project_name_docker_container -q);
docker rm project_name_docker_container;

echo "============================================ running container ===========================================================";

cd "../";
cd "../";

docker run -e TZ=IST  \
    -it \
    --workdir="/project_name" \
    -v "$(pwd)/Mount1":"/project_name/Mount1" \ 
    -p 2000:5000 \
    --name project_name_docker_container \
    project_name_docker_image;

### Example: ###

# docker run -e TZ=IST  \
#     -it \
#     --workdir="/project_name/code_mount" \
#     -v "$(pwd)/code_mount":"/project_name/code_mount" \ 
#     -v "$(pwd)/data_mount":"/project_name/data_mount" \
#     -p 2000:5000 \
#     --name project_name_docker_container \
#     project_name_docker_image;

cd "execute";
cd "Linux";