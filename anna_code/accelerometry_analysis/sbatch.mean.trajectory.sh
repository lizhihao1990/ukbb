#for cluster_index in `seq 1 15`
for cluster_index in `seq 4 15`
do
    sbatch -J "mean_trajectory$cluster_index" -o logs/mean_trajectory.$cluster_index.o -e logs/mean_trajectory.$cluster_index.e -p euan,owners extract_cluster_trajectories.noindex.sh $cluster_index
done
