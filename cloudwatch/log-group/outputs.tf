output "log_group_arn" {
  description = "The ARN of the CloudWatch Log Goup"
  value       = aws_cloudwatch_log_group.this.arn
}
