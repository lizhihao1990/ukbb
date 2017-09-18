for i in `cat fields.categorical`
do
    for chrom in `seq 1 22`
    do
	sbatch -J "$i.$chrom.continuous" -o logs/$i.$chrom.o -e logs/$i.$chrom.e -p euan  --time=08:00:00  plink_script.called.categorical.sh $i $chrom
    done
done
