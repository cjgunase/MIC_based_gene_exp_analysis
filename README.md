# MIC_based_gene_exp_analysis

Maximum Information Coefficient (MIC) is a [novel method](http://science.sciencemag.org/content/334/6062/1518) to measure the association between two random variables. Typically a gene expression data sets contain thousands or even millions of variable pairs, If we do not already know what kinds of relationships to search for, if is difficult identify the important ones?

When constructing a gene regulatory network or analysing gene expression datasets to find relationship between genes, traditinal approaches such as correlation can not capture variety of expressoin patterns that are NON-Linear. Using this approach I hope to develop a data mining algorithm to elucidate novel regulatory relations are hidden or difficult to find from regular methods.

More information about MIC can be found here. 

[![Maximum Information Coefficient](http://img.youtube.com/vi/Onbn285lris/0.jpg)](https://www.youtube.com/watch?v=Onbn285lris)


I downloaded [aracyc pathways file](./aracyc_pathways_input1.txt) which contains following information.

>1. pathway-ID.	The frame ID of the pathway used as a unique identifier in the Pathway Tools software.
>2. pathway-name.	The common name of the pathway.
>3. reaction-id.	The frame ID of the reaction that is part of the pathway, used as a unique identifier in the Pathway Tools software.
>4. EC.	The EC number for the reaction, if present.
>5. protein-id.	The frame ID of the protein (monomer or complex)that catalyzes the reaction, used as a unique identifier in the Pathway Tools software.
>6. protein-name.	The common name of the enzyme that catalyzes the reaction. 
>7. gene-id.	The frame ID of the gene that encodes a protein that catalyzes the reaction, used as a unique identifier in the Pathway Tools software.
>8. gene-name.	The common name of the gene that encodes an enzyme that catalyzes the reaction. 


Then I used the pathway name and gene ID to extract gene expression data from our gene expression compendium. The iPython notebook shows the  process of preparing the files for analysis. and Running the pair wise analysis on parallel computing environment.

The R scripts produces heatmaps for TF-PW association analysis to cluster TFs with higher MIC score. Automated hierarchical clustering with euclidian distance has been used here.

## Results showing MIC for TF-PW relations with possible functional regulation.

This heat maps can be used to identify a pathway which has good functioanl relationship. More analysis should follow this step to identify a possible regulatory mechanism.

![anthocyanin biosynthesis (pelargonidin 3-O-glucoside and cyanidin 3-O-glucoside)](/pathway2.jpg)

![anthocyanin biosynthesis (delphinidin 3-O-glucoside)](/pathway3.jpg)

![superpathway of anthocyanin biosynthesis (from cyanidin and cyanidin 3-<i>O<_i>-glucoside)](/pathway4.jpg)

![cellulose biosynthesis](/pathway5.jpg)

![phenylpropanoid biosynthesis](/pathway7.jpg)

![flavonoid biosynthesis](/pathway9.jpg)


