## DownloadNCBI
#### Download data from genBank
By [Nico Lois](https://www.researchgate.net/profile/Nicolas_Lois) following [NCBI Entrez Utilities](https://www.ncbi.nlm.nih.gov/books/NBK25501).

This short workflow downloads NCBI data through a *nix terminal. Species, genera, families may be searched with the command `esearch -query "taxa"`. This command also allows to search for a species (or any taxa) and a specific part of the genome. `esearch -query "taxa AND COI"`.
[Querying help](https://www.ncbi.nlm.nih.gov/books/NBK3837/#EntrezHelp.Writing_Advanced_Sea).

I reccommend going through the bash file `DownloadNCBI_workflow.sh` line by line and check on the commented lines as they may be useful for you.

Please share and report any issues you may find!
