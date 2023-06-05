# Changing the name

Replace "project_name_" with your_procject specific name for example
if there is a project name Test_Code it becomes

project_name_docker_image -> Test_Code_Docker_Image


To execute linix files 

-  code shpuld be like . ./rund_docker_dev.sh
-  The extra . is so that all commands are runnning on the same shelll and no subshells are use

To run on windows 

- Directly run the bat file


# Docker Image Initiator

- this docker package installs all dependencies on software level
- Example applications and other softwares (Python latex etc)

# Docker Base Image 

- This docker file contains image intitiator + <b> Packages required that need to be updated regularly</b>
- Example python libs

# Docker Image

- This is the final image that contains base image + extra commands 
- example scripts to run before starting dockers or additional execution commands
