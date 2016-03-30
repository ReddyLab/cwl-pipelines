#!/usr/bin/env cwl-runner
class: Workflow
description: "GGR_ChIP-seq 02 trimming - reads: SE"
requirements:
  - class: ScatterFeatureRequirement
inputs:
  - id: "#input_fastq_files"
    type:
      type: array
      items: File
    description: "Input fastq files"
  - id: "#input_adapters_files"
    type:
      type: array
      items: File
    description: "Input adapters files"
  - id: "#nthreads"
    type: int
    default: 1
    description: "Number of threads"
  - id: "#quality_score"
    type: string
    default: "-phred33"
  - id: "#trimmomatic_jar_path"
    type:
      - 'null'
      - string
    default: "/usr/share/java/trimmomatic.jar"
    description: "Trimmomatic Java jar file"
  - id: "#trimmomatic_java_opts"
    type:
      - 'null'
      - string
    description: "JVM arguments should be a quoted, space separated list"
outputs:
  - id: "#output_data_fastq_trimmed_files"
    source: "#trimmomatic-se.output_trimmed_file"
    description: "Trimmed fastq files"
    type:
      type: array
      items: File
  - id: "#trimmed_fastq_read_count"
    source: "#count_fastq_reads.output_read_count"
    description: "Trimmed read counts of fastq files"
    type:
      type: array
      items: File
steps:
  - id: "#trimmomatic-se"
    run: {import: "../trimmomatic/trimmomatic-se.cwl"}
    scatter:
      - "#trimmomatic-se.input_fastq_file"
      - "#trimmomatic-se.input_adapters_file"
    scatterMethod: dotproduct
    inputs:
      - id: "#trimmomatic-se.input_fastq_file"
        source: "#input_fastq_files"
      - id: "#trimmomatic-se.input_adapters_file"
        source: "#input_adapters_files"
      - id: "#trimmomatic-se.nthreads"
        source: "#nthreads"
      - id: "#trimmomatic-se.java_opts"
        source: "#trimmomatic_java_opts"
      - id: "#trimmomatic-se.trimmomatic_jar_path"
        source: "#trimmomatic_jar_path"
    outputs:
      - id: "#trimmomatic-se.output_trimmed_file"
  - id: "#extract_basename"
    run: {import: "../utils/extract-basename.cwl" }
    scatter: "#extract_basename.input_file"
    inputs:
      - id: "#extract_basename.input_file"
        source: "#trimmomatic-se.output_trimmed_file"
    outputs:
      - id: "#extract_basename.output_basename"
  - id: "#count_fastq_reads"
    run: {import: "../utils/count-fastq-reads.cwl" }
    scatter:
      - "#count_fastq_reads.input_fastq_file"
      - "#count_fastq_reads.input_basename"
    scatterMethod: dotproduct
    inputs:
      - id: "#count_fastq_reads.input_fastq_file"
        source: "#trimmomatic-se.output_trimmed_file"
      - id: "#count_fastq_reads.input_basename"
        source: "#extract_basename.output_basename"
    outputs:
      - id: "#count_fastq_reads.output_read_count"