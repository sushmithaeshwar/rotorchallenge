# Rotor Challenge
Rotor Studios interview challenge


## Assumptions made:

1. The script cluster_destroy.sh is to be configured on a Linux based server.
2. The script cluster_destroy.sh is to be scheduled to run at 1 AM everyday.

## Steps to expose the EKS service

This is achieved using the Loadbalancer service available on AWS

1. Create the resource, kubernetes_service to route traffic from the Loadbalancer to the pods running behind it. Refer to the file kubernetes.tf for more details.
2. Ensure to use the matching selector for the pods
3. Expose the target port that matches the container port specified in the kubernetes_deployment resource.
4. Once the loadbalancer is created, fetch the DNS name from the Loadbalancer to access the application.


### Note: In order to execute these scripts, the following IAM roles/policies are necessary

AmazonEKSClusterPolicy
AmazonEKSWorkerNodePolicy
AmazonVPCFullAccess (In a real world scenario, it would be recommended to use custom policies to specify the roles explicitly)
