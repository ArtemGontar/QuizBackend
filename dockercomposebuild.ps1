
cd ..

docker build -t identityserver ./IdentityServer
docker build -t monitoring.api ./Monitoring
docker build -t quiz.api ./Quiz
docker build -t statistic.api ./Statistic
docker build -t user.api ./User

docker tag identityserver:latest 013763960236.dkr.ecr.us-east-1.amazonaws.com/identityserver:latest
docker tag monitoring.api:latest 013763960236.dkr.ecr.us-east-1.amazonaws.com/monitoringapi:latest
docker tag quiz.api:latest 013763960236.dkr.ecr.us-east-1.amazonaws.com/appquiz:latest
docker tag statistic.api:latest 013763960236.dkr.ecr.us-east-1.amazonaws.com/statisticapi:latest
docker tag user.api:latest 013763960236.dkr.ecr.us-east-1.amazonaws.com/userapi:latest

docker push 013763960236.dkr.ecr.us-east-1.amazonaws.com/identityserver:latest
docker push 013763960236.dkr.ecr.us-east-1.amazonaws.com/monitoringapi:latest
docker push 013763960236.dkr.ecr.us-east-1.amazonaws.com/appquiz:latest
docker push 013763960236.dkr.ecr.us-east-1.amazonaws.com/statisticapi:latest
docker push 013763960236.dkr.ecr.us-east-1.amazonaws.com/userapi:latest
