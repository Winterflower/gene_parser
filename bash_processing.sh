#!/bin/bash

cd glimmer_file

#TRAIN GLIMMER ON ARABIDOPSIS

GlimmerHMM/bin/glimmerhmm_linux haggis.fna -d GlimmerHMM/trained_dir/arabidopsis/ > haggis_trained_on_arabidopsis.txt

#TRAIN GLIMMER ON C.ELEGANS
GlimmerHMM/bin/glimmerhmm_linux haggis.fna -d GlimmerHMM/trained_dir/Celegans/ > haggis_trained_on_celegans.txt

#RICE
GlimmerHMM/bin/glimmerhmm_linux haggis.fna -d GlimmerHMM/trained_dir/rice/ > haggis_trained_on_rice.txt

#HUMAN
GlimmerHMM/bin/glimmerhmm_linux haggis.fna -d GlimmerHMM/trained_dir/human/ > haggis_trained_on_human.txt


#ZEBRAFISH
GlimmerHMM/bin/glimmerhmm_linux haggis.fna -d GlimmerHMM/trained_dir/zebrafish/ > haggis_trained_on_zebrafish.txt

for f in *.txt; do echo $f; done
