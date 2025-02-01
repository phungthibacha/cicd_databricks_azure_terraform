# Create a Databricks cluster
resource "databricks_cluster" "mydbscluster" {
  cluster_name            = "terraform_cluster"
  spark_version           = "16.1.x-cpu-ml-scala2.12"
  node_type_id            = "Standard_DS3_v2"
  autotermination_minutes = 20
  num_workers             = 0
  data_security_mode      = "SINGLE_USER"
  custom_tags = {
    "admin" = "amyphung.dev@gmail.com"
  }
}