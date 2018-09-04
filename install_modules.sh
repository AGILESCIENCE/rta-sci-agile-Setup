#!/usr/bin/env bash
#1) directory path where copy packages

trap exit ERR


echo "---------"
echo "Installing pipeline_manager"
test -d /opt/prod/pipeline_manager || mkdir /opt/prod/pipeline_manager 
cp -r pipeline_manager/scripts /opt/prod/pipeline_manager

echo "---------"
echo "Installing AGILE-ALERT-PIPE"
cd AGILE-ALERT-PIPE
./install.sh /opt/prod/AGILEPIPE
cd ..

echo "---------"
echo "Installing AlarmGenerator_hermes"
cd AlarmGenerator_hermes
./install.sh /opt/prod/AGILEPIPE
cd ..

echo "---------"
echo "Installing AlarmGenerator_morfeoalarm"
cd AlarmGenerator_morfeoalarm
./install.sh /opt/prod/AGILEPIPE
cd ..

echo "---------"
echo "Installing AlertReceiver_GCNnetwork"
cd AlertReceiver_GCNnetwork
./install.sh /opt/prod/AGILEPIPE
cd ..

echo "---------"
echo "Installing AGILE-MCAL-PIPE"
test -d /opt/prod/AGILE-MCAL-PIPE || mkdir /opt/prod/AGILE-MCAL-PIPE/
cp -r AGILE-MCAL-PIPE/pipe /opt/prod/AGILE-MCAL-PIPE

