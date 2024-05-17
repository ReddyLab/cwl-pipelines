# cwl-pipelines

CWL tools and workflows associated with the analysis of genomic and functional genomics data in the Reddy Lab. This repo is built on and replaces [Duke-GCB/GGR-cwl](https://github.com/Duke-GCB/GGR-cwl) which is only kept for legacy purposes. 

The pipelines have been created using the [Common Workflow Language](http://www.commonwl.org/) `v1.0` specification. 
The workflows are parametrized with values that best suit the experiments carried out in the Reddy Lab, but they can be easily tailored for specific needs.

For a detail User Guide to the CWL workflows, please see the [wiki](https://github.com/ReddyLab/cwl-pipelines/wiki).

If you need help navigating the files generated by the pipelines, have a look at the [processed files cheatsheet](v1.0/processed_output_files_help.tsv).

## [ChIP-seq](v1.0/ChIP-seq_pipeline):

### Pipelines
* [SE](v1.0/ChIP-seq_pipeline/pipeline-se.cwl)
* [SE - w/control](v1.0/ChIP-seq_pipeline/pipeline-se-with-control.cwl)
* [PE](v1.0/ChIP-seq_pipeline/pipeline-pe.cwl)
* [PE - w/control](v1.0/ChIP-seq_pipeline/pipeline-pe-with-control.cwl)

### Steps
* 01 - Fastq QC step:
    * [Fastq QC step - SE](v1.0/ChIP-seq_pipeline/01-qc-se.cwl)
    * [Fastq QC step - PE](v1.0/ChIP-seq_pipeline/01-qc-pe.cwl)
* 02 - Trimming reads step:
    * [Trimming step - SE](v1.0/ChIP-seq_pipeline/02-trim-se.cwl)
    * [Trimming step - PE](v1.0/ChIP-seq_pipeline/02-trim-pe.cwl)
* 03 - Mapping step:
    * [Mapping step - SE](v1.0/ChIP-seq_pipeline/03-map-se.cwl)
    * [Mapping step - PE](v1.0/ChIP-seq_pipeline/03-map-pe.cwl)
* 04 - Peak calling step:
    * [Peak calling step](v1.0/ChIP-seq_pipeline/04-peakcall.cwl)
    * [Peak calling step - with control](v1.0/ChIP-seq_pipeline/04-peakcall-with-control.cwl)
* 05 - Quantification step:
    * [Quantification step](v1.0/ChIP-seq_pipeline/05-quantification.cwl)
    * [Quantification step - with control](v1.0/ChIP-seq_pipeline/05-quantification-with-control.cwl)

## [DNase-seq](v1.0/DNase-seq_pipeline):

### Pipelines
* [SE](v1.0/DNase-seq_pipeline/pipeline-se.cwl)

### Steps
* 01 - Mapping step:
    * 01 - [Mapping step - SE](v1.0/DNase-seq_pipeline/01-map-se.cwl)
* 02 - Peak calling step:
    * 02 - [Peak calling step](v1.0/DNase-seq_pipeline/02-peakcall.cwl)
* 03 - Quantification step:
    * 03 - [Quantification step](v1.0/DNase-seq_pipeline/03-quantification.cwl)


## [RNA-seq](v1.0/RNA-seq_pipeline):

### Pipelines
* [SE - Unstranded](v1.0/RNA-seq_pipeline/pipeline-se-unstranded.cwl)
* [SE - Unstranded - w/sjdb](v1.0/RNA-seq_pipeline/pipeline-se-unstranded-with-sjdb.cwl)
* [SE - Stranded](v1.0/RNA-seq_pipeline/pipeline-se-stranded.cwl)
* [SE - Stranded - w/sjdb](v1.0/RNA-seq_pipeline/pipeline-se-stranded-with-sjdb.cwl)
* [SE - Revstranded](v1.0/RNA-seq_pipeline/pipeline-se-revstranded.cwl)
* [SE - Revstranded - w/sjdb](v1.0/RNA-seq_pipeline/pipeline-se-revstranded-with-sjdb.cwl)
* [PE - Unstranded](v1.0/RNA-seq_pipeline/pipeline-pe-unstranded.cwl)
* [PE - Unstranded - w/sjdb](v1.0/RNA-seq_pipeline/pipeline-pe-unstranded-with-sjdb.cwl)
* [PE - Stranded](v1.0/RNA-seq_pipeline/pipeline-pe-stranded.cwl)
* [PE - Stranded - w/sjdb](v1.0/RNA-seq_pipeline/pipeline-pe-stranded-with-sjdb.cwl)
* [PE - Revstranded](v1.0/RNA-seq_pipeline/pipeline-pe-revstranded.cwl)
* [PE - Revstranded - w/sjdb](v1.0/RNA-seq_pipeline/pipeline-pe-revstranded-with-sjdb.cwl)

### Steps
* 00 - Genome files generation for STAR and RSEM:
    * 00 - [Preprocessing step](v1.0/RNA-seq_pipeline/00-preprocessing.cwl)
* 01 - Fastq QC step:
    * 01 - [Fastq QC step - SE](v1.0/RNA-seq_pipeline/01-qc-se.cwl)
    * 01 - [Fastq QC step - PE](v1.0/RNA-seq_pipeline/01-qc-pe.cwl)
* 02 - Trimming reads step:
    * 02 - [Trimming step - SE](v1.0/RNA-seq_pipeline/02-trim-se.cwl)
    * 02 - [Trimming step - PE](v1.0/RNA-seq_pipeline/02-trim-pe.cwl)
* 03 - Mapping step:
    * 03 - [Mapping step - SE](v1.0/RNA-seq_pipeline/03-map-se.cwl)
    * 03 - [Mapping step - SE - w/sjdb](v1.0/RNA-seq_pipeline/03-map-se-with-sjdb.cwl)
    * 03 - [Mapping step - PE](v1.0/RNA-seq_pipeline/03-map-pe.cwl)
    * 03 - [Mapping step - PE - w/sjdb](v1.0/RNA-seq_pipeline/03-map-pe-with-sjdb.cwl)
* 04 - Quantification step:
    * 04 - [Quantification step - SE - Unstranded](v1.0/RNA-seq_pipeline/04-quantification-se-unstranded.cwl)
    * 04 - [Quantification step - SE - Stranded](v1.0/RNA-seq_pipeline/04-quantification-se-stranded.cwl)
    * 04 - [Quantification step - SE - Revstranded](v1.0/RNA-seq_pipeline/04-quantification-se-revstranded.cwl)
    * 04 - [Quantification step - PE - Unstranded](v1.0/RNA-seq_pipeline/04-quantification-pe-unstranded.cwl)
    * 04 - [Quantification step - PE - Stranded](v1.0/RNA-seq_pipeline/04-quantification-pe-stranded.cwl)
    * 04 - [Quantification step - PE - Revstranded](v1.0/RNA-seq_pipeline/04-quantification-pe-revstranded.cwl)

## [ATAC-seq](v1.0/ATAC-seq_pipeline):

### Pipelines
* [SE](v1.0/ATAC-seq_pipeline/pipeline-se.cwl)
* [SE - Blacklist Removal](v1.0/ATAC-seq_pipeline/pipeline-se-blacklist-removal.cwl)
* [PE](v1.0/ATAC-seq_pipeline/pipeline-pe.cwl)
* [PE - Blacklist Removal](v1.0/ATAC-seq_pipeline/pipeline-pe-blacklist-removal.cwl)

### Steps
* 01 - Fastq QC step:
    * [Fastq QC step - SE](v1.0/ATAC-seq_pipeline/01-qc-se.cwl)
    * [Fastq QC step - PE](v1.0/ATAC-seq_pipeline/01-qc-pe.cwl)
* 02 - Trimming reads step:
    * [Trimming step - SE](v1.0/ATAC-seq_pipeline/02-trim-se.cwl)
    * [Trimming step - PE](v1.0/ATAC-seq_pipeline/02-trim-pe.cwl)
* 03 - Mapping step:
    * [Mapping step - SE](v1.0/ATAC-seq_pipeline/03-map-se.cwl)
    * [Mapping step - SE - Blacklist Removal](v1.0/ATAC-seq_pipeline/03-map-se-blacklist-removal.cwl)
    * [Mapping step - PE](v1.0/ATAC-seq_pipeline/03-map-pe.cwl)
    * [Mapping step - PE - Blacklist Removal](v1.0/ATAC-seq_pipeline/03-map-pe-blacklist-removal.cwl)
* 04 - Peak calling step:
    * [Peak calling step - SE](v1.0/ATAC-seq_pipeline/04-peakcall-se.cwl)
    * [Peak calling step - PE](v1.0/ATAC-seq_pipeline/04-peakcall-pe.cwl)
* 05 - Quantification step:
    * [Quantification step](v1.0/ATAC-seq_pipeline/05-quantification.cwl)

## [STARR-seq](v1.0/STARR-seq_pipeline):

### Pipelines
* [PE](v1.0/STARR-seq_pipeline/pipeline-pe.cwl)
* [PE - UMIs](v1.0/STARR-seq_pipeline/pipeline-pe-umis.cwl)

### Steps
* 01 - Fastq QC step:
    * [Fastq QC step - PE](v1.0/STARR-seq_pipeline/01-qc-pe.cwl)
* 02 - Trimming reads step:
    * [Trimming step - PE](v1.0/STARR-seq_pipeline/02-trim-pe.cwl)
* 03 - Mapping step:
    * [Mapping step - PE](v1.0/STARR-seq_pipeline/03-map-pe.cwl)
    * [Mapping step - PE - UMIs](v1.0/STARR-seq_pipeline/03-map-pe-umis.cwl)
* 04 - Quantification step:
    * [Quantification step](v1.0/STARR-seq_pipeline/04-quantification.cwl)


----------------------------------------------------------------------------------------------------------
##### Workflow differences legend 
Depending on the experiments, there might be small differences in the workflows which will be determined by:

- All
    - Type of read:
        - SE: Single End reads
        - PE: Paired-End reads
- ATAC-seq only
    - Blacklist removal: whether or not to mask out blacklisted regions.
- ChIP-seq only
    - With or without control. If a control sample is available `-with-control` or not.
- RNA-seq only
    - Strand specificity:
        - Unstranded: reads are not strand-specific, is not possible to know from which DNA strand they come.
        - Stranded: reads are strand-specific and can be map to the Watson and Crick strands. 
        - Reverse Stranded: reads come from cDNA, which switches the mapping of the forward and reverse strand. 
    - Custom SJDB: By default the STAR 2-pass mapping strategy is implemented in which a first pass of STAR is run to generate a large pool of novel splice junctions (referred as SJDB). These junctions are used to generate a genome index which is employed in the mapping step. However, this 2-pass strategy can be skipped, using a custom genome index Because typically this genome would be created with a precomputed SJDB, this option is denoted with `-with-sjdb`.
- STARR-seq only
    - UMI: whether or not the libraries contains Unique Molecular Identifiers (UMIs) added to the fragments, which should be used when marking duplicates.


