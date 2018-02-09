# make firebase function install

default: deploy

depends: functions/node_modules
	cd functions; npm install

deploy: depends
	firebase use --add $(FIREBASE_PROJECT)
	firebase deploy --only functions
