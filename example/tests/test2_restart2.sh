wd=test2_restart2
oldDir=test2

if [ -d $wd ]; then
    rm -r $wd
fi

if [ ! -d $oldDir ] ; then
  echo "ERROR: Directory (with contents) of old BRAKER run $oldDir does not exist, yet. Please run test2.sh before running test2_restart2.sh!"  
else
    ( time braker.pl --genome=../genome.fa --hints=$oldDir/hintsfile.gff --geneMarkGtf=test2/GeneMark-EP/genemark.gtf --epmode --softmasking --workingdir=$wd ) &> test2_restart2.log
fi
