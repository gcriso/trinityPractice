#!/bin/bash 


java -jar /opt/Trimmomatic-0.38/trimmomatic \
	PE \
	-phred33 \
	-threads 6 \
	SRR11284040_1.fastq.gz \
	SRR11284040_2.fastq.gz \
	clean_1.fastq.gz \
	unp_1.fastq.gz \
	clean_2.fastq.gz \
	unp_2.fastq.gz \
	ILLUMINACLIP:/opt/Trimmomatic-0.38/adapters/allAdapter.fas:2:30:10 \
	LEADING:30 \
	TRAILING:30 \
	HEADCROP:30 \
	SLIDINGWINDOW:5:30 \
	MINLEN:50 \

Command to assemble scripts 

/opt/trinity/Trinity --seqType fq --max_memory 50G --left clean_1.fastq.gz --right clean_2.fastq.gz --CPU 12 --SS_lib_type RF 

Command to create HTML output file for fastqc 

/opt/FastQC/fastqc SRR11284040_1.fastq.gz  

/opt/FastQC/fastqc SRR11284040_2.fastq.gz  	
