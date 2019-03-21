mkdir -p jenkins
mkdir -p v1
mkdir -p v2
mkdir -p v3

git clone --single-branch --branch v1 https://github.com/jleleu42/virtualisation-exam.git
mv virtualisation-exam/* v1/
sudo rm -rd virtualisation-exam
git clone --single-branch --branch v2 https://github.com/jleleu42/virtualisation-exam.git
mv virtualisation-exam/* v2/
sudo rm -rd virtualisation-exam
git clone --single-branch --branch v3 https://github.com/jleleu42/virtualisation-exam.git
mv virtualisation-exam/* v3/
sudo rm -rd virtualisation-exam
git clone --single-branch --branch jenkins https://github.com/jleleu42/virtualisation-exam.git
mv virtualisation-exam/* jenkins/
sudo rm -rd virtualisation-exam

cd ./jenkins
docker-compose up --build --force-recreate -d

cd ../v1/
docker-compose up --build --force-recreate -d

cd ../v2/
docker-compose up --build --force-recreate -d

cd ../v3/
docker-compose up --build --force-recreate -d

echo "For Jenkins go to http://localhost:8090    user : jenkins // password : jenkins"
echo "For v1, go to http://localhost:8091"
echo "For v2, go to http://localhost:8092"
echo "For v3, go to http://localhost:8093"
echo "Enjoy :)"
echo "Before restart this script, delete all folder : "
echo "sudo rm -rd jenkins && sudo rm -rd v1 && sudo rm -rd v2 && sudo rm -rd v3"