default: task1 task2 build-frontend build-elm build-backend

task1:
	sleep 2

task2:
	sleep 4

build-frontend:
	(cd frontend && npm install && npm run test)

build-elm:
	(cd elm && elm make Main.elm)

build-backend:
	(cd backend && mvn verify)
