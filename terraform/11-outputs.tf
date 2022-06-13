
output "oidc_policy_arn" {
  value = aws_iam_role.eks_oidc_role.arn
}

output "eks_cluster_autoscaler_arn" {
  value = aws_iam_role.eks_cluster_autoscaler.arn
}