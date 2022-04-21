# Script to destroy the EKS cluster

terraform destroy

# To schedule the script to run at a predefined time of the day, do the following
#
# 1. On the designated server, run the command
#
# crontab -e
#
# 2. A vi like editer window opens up. Add the following line towards the end
#
# * 1 * * * cluster_destroy.sh
#
# 3. Save and exit
