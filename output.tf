output "databricks_host" {
    value = "https://${azurerm_databricks_workspace.dbs-workspace.workspace_url}"
}
output "cluster_id" {
  value = databricks_cluster.mydbscluster.cluster_id
}

