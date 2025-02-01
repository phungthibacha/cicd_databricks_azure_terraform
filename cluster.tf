# Create a Databricks cluster
resource "databricks_cluster" "mydbscluster" {
  cluster_name            = var.cluster_name
  spark_version           = "16.1.x-cpu-ml-scala2.12"
  node_type_id            = "Standard_DS3_v2"
  autotermination_minutes = var.cluster_autotermination_minutes
  num_workers = var.cluster_num_workers
  data_security_mode = var.cluster_data_security_mode
  custom_tags = {
    "admin" = "amyphung.dev@gmail.com"
  }
}