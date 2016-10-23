# MIC_based_gene_exp_analysis
This project will investigate linear and non-linear associations between genes to construct gene regulatory network and identity important genes.


[![Maximum Information Coefficient](http://img.youtube.com/vi/Onbn285lris/0.jpg)](https://www.youtube.com/watch?v=Onbn285lris)

steps

* download [aracyc pathways file](./aracyc_pathways_input1.txt). This file contains following information.

>1. pathway-ID.	The frame ID of the pathway used as a unique identifier in the Pathway Tools software.
>2. pathway-name.	The common name of the pathway.
>3. reaction-id.	The frame ID of the reaction that is part of the pathway, used as a unique identifier in the Pathway Tools software.
>4. EC.	The EC number for the reaction, if present.
>5. protein-id.	The frame ID of the protein (monomer or complex)that catalyzes the reaction, used as a unique identifier in the Pathway Tools software.
>6. protein-name.	The common name of the enzyme that catalyzes the reaction. 
>7. gene-id.	The frame ID of the gene that encodes a protein that catalyzes the reaction, used as a unique identifier in the Pathway Tools software.
>8. gene-name.	The common name of the gene that encodes an enzyme that catalyzes the reaction. 


* I used the pathway name and gene ID to extract gene expression data from our gene expression compendium. The iPython notebook shows the  process of preparing the files for analysis. and Running the pair wise analysis on parallel computing environment.

* The R scripts produces heatmaps for TF-PW association analysis to cluster TFs with higher MIC score. Automated hierarchical clustering with euclidian distance has been used here.

## Results

*
![anthocyanin biosynthesis (pelargonidin 3-O-glucoside and cyanidin 3-O-glucoside)](/pathway2.jpg)

![anthocyanin biosynthesis (delphinidin 3-O-glucoside)](/pathway3.jpg)

![superpathway of anthocyanin biosynthesis (from cyanidin and cyanidin 3-<i>O<_i>-glucoside)](/pathway4.jpg)

![cellulose biosynthesis](/pathway5.jpg)

![phenylpropanoid biosynthesis](/pathway7.jpg)

![flavonoid biosynthesis](/pathway9.jpg)


