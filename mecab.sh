#!/bin/bash

echo "Installing konlpy....."
pip3 install konlpy
echo "Done"


echo "Installing mecab-0.996-ko-0.9.2.tar.gz....."

echo "Downloading mecab-0.996-ko-0.9.2.tar.gz......."
echo "from https://bitbucket.org/eunjeon/mecab-ko/downloads/mecab-0.996-ko-0.9.2.tar.gz"
wget https://bitbucket.org/eunjeon/mecab-ko/downloads/mecab-0.996-ko-0.9.2.tar.gz 
echo "Done"

echo "Unpacking mecab-0.996-ko-0.9.2.tar.gz......."
tar xvfz mecab-0.996-ko-0.9.2.tar.gz > /dev/null 2>&1 
echo "Done"

echo "Change Directory to mecab-0.996-ko-0.9.2......."
cd mecab-0.996-ko-0.9.2/

echo "installing mecab-0.996-ko-0.9.2.tar.gz........"
echo 'configure'
./configure > /dev/null 2>&1
echo 'make'
make > /dev/null 2>&1
echo 'make check'
make check > /dev/null 2>&1
echo 'make install'
sudo make install > /dev/null 2>&1

echo 'ldconfig'
ldconfig > /dev/null 2>&1
echo "Done"

echo "Change Directory to back"
cd ../

echo "Downloading mecab-ko-dic-2.1.1-20180720.tar.gz......."
echo "from https://bitbucket.org/eunjeon/mecab-ko-dic/downloads/mecab-ko-dic-2.1.1-20180720.tar.gz"
wget https://bitbucket.org/eunjeon/mecab-ko-dic/downloads/mecab-ko-dic-2.1.1-20180720.tar.gz
echo "Done"
 
echo "Unpacking  mecab-ko-dic-2.1.1-20180720.tar.gz......."
tar xvfz mecab-ko-dic-2.1.1-20180720.tar.gz > /dev/null 2>&1
echo "Done"

echo "Change Directory to mecab-ko-dic-2.1.1-20180720"
cd mecab-ko-dic-2.1.1-20180720/
echo "Done"

echo "installing........"
echo 'configure'
./configure > /dev/null 2>&1
echo 'make'
make > /dev/null 2>&1
echo 'make install'
sudo make install > /dev/null 2>&1

echo 'apt-get update'
sudo sudo apt-get update > /dev/null 2>&1
echo 'apt-get upgrade'
sudo apt-get upgrade -y > /dev/null 2>&1
echo 'apt install curl -y'
sudo apt install curl -y > /dev/null 2>&1
echo 'apt install git -y'
sudo apt install git -y > /dev/null 2>&1
echo 'wget https://raw.githubusercontent.com/konlpy/konlpy/master/scripts/mecab.sh'
wget --no-check-certificate https://raw.githubusercontent.com/konlpy/konlpy/master/scripts/mecab.sh
sh ./mecab.sh
echo "Done"

echo "remove mecab files..."

rm -f mecab-ko-dic-2.1.1-20180720.tar.gz
rm -f mecab-ko-dic-2.1.1-20180720
rm -f mecab-0.996-ko-0.9.2.tar.gz
rm -f ecab-0.996-ko-0.9.2
rm -f mecab.sh
echo "Successfully Installed"

echo "Now you can use Mecab-KO"
