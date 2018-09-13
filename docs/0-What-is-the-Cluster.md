# What is the VUW HPC Cluster

The CADGrid HPC Cluster (hereafter referred to as: the cluster) is a Uni-wide computing
resource that uses the Slurm resource manager to schedule jobs and reserve
resources.  Similar to most modern compute clusters, the cluster requires you to
request CPU, Memory and Time for your job.  If you do not request these
resources, you will be given the minimal defaults, which may not be enough to
run your job.  The good news about resource reservations is that the resources
you request are guaranteed to be yours, the bad news is if you request too
little memory or time, your job may terminate prematurely and if you request too
few CPUs then your job may run slowly.

The cluster is made up of partitions.  A partition is a set of compute nodes
(servers) and each partition has its own configuration and hardware profile.
The partition on which you run your jobs will depend on the type of workflow or
job you intend to submit.

The cluster employs the module environment to allow researchers to customize
their environment with their required applications and languages.  

The documentation contained in this wiki cover most of what you will need to
know to start running jobs, but if you need more help, we will be creating some
tutorials with step-by-step instructions for our most popular apps and
languages.
