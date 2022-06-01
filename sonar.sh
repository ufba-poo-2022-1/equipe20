cd notafilme/backend
mvn package
cd -

cd notafilme/frontend
yarn install
cd -

sonar-scanner \
  -Dsonar.organization=ufba-poo-2022-1 \
  -Dsonar.projectKey=ufba-poo-2022-1_equipe202 \
  -Dsonar.sources=. \
  -Dsonar.host.url=https://sonarcloud.io \
	-Dsonar.java.binaries=notafilme/backend/target/classes
