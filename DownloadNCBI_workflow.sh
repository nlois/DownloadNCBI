### This pipeline allows to download NCBI COI sequences
# from Semelidae family (saltwater clams).
# Can be adapted for any taxon

#### By Nico Lois adapted from NCBI Entrez Utilities
# https://www.ncbi.nlm.nih.gov/books/NBK25501/

# 0 # Create a working directory of your choice to download data
# e.g. /home/NCBIdata
cd ~
mkdir NCBIdata
cd NCBIdata

# 00 # If you have no conda environment for this project I reccomend
# creating one by running the next two lines.

#conda create -n NCBI
#conda activate NCBI

# 1 # Install the ncbi entrez scripts to download straight from the console
# (Linux)
sudo apt install ncbi-entrez-direct

# another option is to download it with curl
# sh -c "$(curl -fsSL ftp://ftp.ncbi.nlm.nih.gov/entrez/entrezdirect/install-edirect.sh)"


# 2 # Download COI sequencies family Semelidae with the command
# With esearch you can query on NCBI database.
# Querying help -> https://bit.ly/2Wmk5EV
# With efetch you download the files in this case in fasta format

esearch -db nucleotide -query "Semelidae AND COI" | efetch -format fasta > Semelidae_COI.txt
