#!/bin/bash

#A script to setup directories and file for Week 4 HW

#September 18, 2017


#Clone forked repository and setup directories

echo "Clone repository/directory."

git clone httphttps://github.com/ABogisich/ABogisich-week04-homework-git.git

echo "Setting up directories."

mkdir code data data/raw_data output output/figures output/tables

echo "Done creating directories!"

#Download the fasta files into raw_data subdirectory

echo "Downloading the zip fasta files..."

cd data

cd raw data

curl -L http://npk.io/PUlBaY+ -o fasta-archive.zip

echo "Unzip fasta file"

unzip fasta-archive.zip

echo "Done downloading and unzipping fasta file."

echo "Remove fasta file achive folder to just keep contents."

rm fasta-archive.zip

#Now I'm ready to check git status and add my script, and then commit it

echo "Checking git status"

cd ..

cd..

git status

echo "Add my script to stage for first commit."

git add setupProject.sh

echo "Commit my script."

git commit -m "First commit with file directory script."

#Update the script to add invisible .gitkeep files in empty directories

echo "Go into empty files (e.g. code, output/figures, output/tables, etc.)and create .gitkeep files using...." 

touch .gitkeep

echo "Done creating .gitkeep files."

#Add and commit changes to  the script only in a second commit

echo "Add and commit changes to script."

git add setupProject.sh

git commit -m "Second commit with .gitkeep changes in script."

echo "Done with the second commit."
