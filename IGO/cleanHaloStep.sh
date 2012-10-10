#!/bin/bash
# this is to remove any steps of halo flat fielding.
Motherdir=`pwd`
for i in `cat directories` ;
do
    cd $Motherdir
    cd $i
    sed -i 's/^n//g' StarSpectras.txt
    sed -i 's/^n//g' LampSpectras.txt
    sed -i 's/^n//g' Pairs2Subtract.txt
    sed -i 's/ n/ /g' Pairs2Subtract.txt
    rm nzs*.fits
    rm Halo_IFOS*.fits
    rm nHalo_IFOS*.fits
    rm zs[hH]*.fits*_*_*.fits
    
done