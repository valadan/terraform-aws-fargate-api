variable "app_name" {
  type        = string
  description = "Application name to name your Fargate API and other resources"
}
variable "env" {
  type        = string
  description = "Environment of the AWS Account (e.g. dev, prd)"
}
variable "dockerfile_dir" {
  type        = string
  description = "The directory that contains the Dockerfile"
}
variable "image_port" {
  type        = number
  description = "The port the docker image is listening on"
}
variable "health_check_path" {
  type        = string
  default     = "/"
  description = "Health check path for the image. Defaults to \"/\"."
}
variable "container_env_variables" {
  type        = map(string)
  description = "Map of environment variables to pass to the container definition. Defaults to an empty map."
  default     = {}
}
variable "container_secrets" {
  type        = map(string)
  description = "Map of secrets from the parameter store to be assigned to an env variable. Defaults to an empty map."
  default     = {}
}
variable "task_policies" {
  type        = list(string)
  description = "List of IAM Policy ARNs to attach to the task execution policy."
  default     = []
}
variable "min_capacity" {
  type        = number
  default     = 1
  description = "Minimum task count. Defaults to 1."
}
variable "max_capacity" {
  type        = number
  default     = 2
  description = "Maximum task count. Defaults to 2."
}
