#!/usr/bin/env bash
#1) directory path where copy packages

trap exit ERR


echo "---------"
echo "Installing pipeline_manager"
ln -s $(pwd)/pipeline_manager /opt/prod/pipeline_manager

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
ln -s $(pwd)/AGILE-MCAL-PIPE /opt/prod/AGILE-MCAL-PIPE

echo "---------"
echo "Installing AGILE-GUI-SCI"
ln -s $(pwd)/AGILE-GUI-SCI /opt/prod/AGILE-GUI-SCI
