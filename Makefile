# make firebase function deploy

deploy: 
	cd functions; npm install
	firebase use --add $(FIREBASE_PROJECT)
	firebase deploy --only functions
