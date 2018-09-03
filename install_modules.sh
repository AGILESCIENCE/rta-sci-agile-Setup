#!/usr/bin/env bash
#1) directory path where copy packages

trap exit ERR


echo "---------"
echo "Installing pipeline_manager"
cp -r pipeline_manager /opt/prod

echo "---------"
echo "Installing AGILE-ALERT-PIPE"
cd AGILE-ALERT-PIPE
./install.sh /opt/prod/AGILEPIPE
cd ..

echo "---------"
echo "Installing AGILE-GRID-scripts"
module load agile-B25-r5
cd AGILE-GRID-scripts
./install.sh
cd ..

echo "---------"
echo "Installing AlarmGenerator_hermes"
cd AlarmGenerator_hermes /opt/prod/AGILEPIPE
./install.sh
cd ..

echo "---------"
echo "Installing AlarmGenerator_morfeoalarm"
cd AlarmGenerator_morfeoalarm /opt/prod/AGILEPIPE
./install.sh
cd ..

echo "---------"
echo "Installing AlertReceiver_GCNnetwork"
cd AlertReceiver_GCNnetwork /opt/prod/AGILEPIPE
./install.sh
cd ..
