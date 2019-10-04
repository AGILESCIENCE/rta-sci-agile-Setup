#!/usr/bin/env bash
#1) directory path where copy packages

trap exit ERR


echo "---------"
echo "Installing pipeline_manager"
ln -s $(pwd)/pipeline_manager $1/pipeline_manager

echo "---------"
echo "Installing AGILE-ALERT-PIPE"
cd AGILE-ALERT-PIPE
./install.sh $1
cd ..

echo "---------"
echo "Installing AlarmGenerator_hermes"
cd AlarmGenerator_hermes
./install.sh $1
cd ..

echo "---------"
echo "Installing AlarmGenerator_morfeoalarm"
cd AlarmGenerator_morfeoalarm
./install.sh $1
cd ..

echo "---------"
echo "Installing AlertReceiver_GCNnetwork"
cd AlertReceiver_GCNnetwork
./install.sh $1
cd ..

echo "---------"
echo "Installing AGILE-MCAL-PIPE"
ln -s $(pwd)/AGILE-MCAL-PIPE $1/AGILE-MCAL-PIPE

echo "---------"
echo "Installing AGILE-GUI-SCI"
ln -s $(pwd)/AGILE-GUI-SCI $1/AGILE-GUI-SCI

echo "---------"
echo "Installing AGILE-GUI-SCI"
ln -s $(pwd)/SUPERGRAWITA-GUI $1/SUPERGRAWITA-GUI

echo "---------"
echo "Installing AGILEPIPE-scripts"
cd AGILEPIPE-scripts
cp * $1
cd ..
#echo "---------"
#echo "Installing testunit"
#ln -s $(pwd)/testunit $1/testunit
