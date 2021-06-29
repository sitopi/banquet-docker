# banquet-docker
dockerのプロジェクト

# 準備
git clone https://github.com/sitopi/banquet-docker.git  
cd banquet-docker   
git clone https://github.com/sitopi/banquet-cms.git  
cd banquet-cms  
banquet-cmsのREADME(https://github.com/sitopi/banquet-cms/blob/feature-use_docker/README.md)の内容を実行  
cd ..  
docker-compose up -d --build  
/docker/mysql/banquet_2021-06-29.sql をSequelproでインポートする  