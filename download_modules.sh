#!/usr/bin/env bash
#First parameter: git username
#Second parameter: -t -> do not use tags

trap exit ERR
echo $2
if [ "$2" != "-t" ] ; then
	echo "USE TAGS"
	#TAG_PIPEMANAGER=v1.0.2
	#TAG_ALERTPIPE=v2.0.0
  #TAG_AGILEGUI=v1.0.0
	#TAG_AGILEMCAL=v1.0.0
	#TAG_HERMES=v1.0.0
	#TAG_MORFEO=v1.0.0
	#TAG_GCN=v1.0.0
	#TAG_GRID=v1.0.0
fi

echo "--------------"
git clone https://$1@github.com/rta-pipe/pipeline_manager.git
cd pipeline_manager
if [ "$2" != "-t" ]; then
	git checkout $TAG_PIPEMANAGER
else
	echo "Use master version"
fi
cd ..

echo "--------------"
git clone https://$1@github.com/ASTRO-EDU/AGILE-ALERT-PIPE.git
cd AGILE-ALERT-PIPE
if [ "$2" != "-t" ]; then
	git checkout $TAG_ALERTPIPE
else
	echo "Use master version"
fi
cd ..

echo "--------------"
git clone https://$1@github.com/ASTRO-EDU/AGILE-MCAL-PIPE.git
cd AGILE-MCAL-PIPE
if [ "$2" != "-t" ]; then
	git checkout $TAG_AGILEMCAL
else
	echo "Use master version"
fi
cd ..

echo "--------------"
git clone https://$1@github.com/ASTRO-EDU/AlarmGenerator_hermes.git
cd AlarmGenerator_hermes
if [ "$2" != "-t" ]; then
	git checkout $TAG_HERMES
else
	echo "Use master version"
fi
cd ..

echo "--------------"
git clone https://$1@github.com/ASTRO-EDU/AlarmGenerator_morfeoalarm.git
cd AlarmGenerator_morfeoalarm
if [ "$2" != "-t" ]; then
	git checkout $TAG_MORFEO
else
	echo "Use master version"
fi
cd ..

echo "--------------"
git clone https://$1@github.com/ASTRO-EDU/AlertReceiver_GCNnetwork.git
cd AlertReceiver_GCNnetwork
if [ "$2" != "-t" ]; then
	git checkout $TAG_GCN
else
	echo "Use master version"
fi
cd ..

echo "--------------"
git clone https://$1@github.com/AGILESCIENCE/AGILE-GRID-scripts.git
cd AGILE-GRID-scripts
if [ "$2" != "-t" ]; then
	git checkout $TAG_GRID
else
	echo "Use master version"
fi
cd ..
