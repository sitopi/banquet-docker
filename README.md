# banquet-docker
dockerのプロジェクト

# 準備

リポジトリのクローン  
git clone https://github.com/sitopi/banquet-docker.git   
git clone https://github.com/sitopi/banquet-app.git  
git clone https://github.com/sitopi/banquet-cms.git  

cd banquet-cms  
banquet-cmsのREADMEの内容を実行  
cd ..  

docker-compose up -d --build  
/docker/mysql/banquet_2021-06-29.sql をSequelproでインポートする  

banquet-appのREADMEの内容を実行 
