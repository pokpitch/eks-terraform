data "aws_iam_role" "eks_role" {
  name = "EksClusterRole"
}

data "aws_iam_role" "node_role" {
  name = "EKS-WORKER6NODE-ROLE"
}
