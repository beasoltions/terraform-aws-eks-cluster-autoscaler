data "kubernetes_all_namespaces" "allns" {}

resource "kubernetes_namespace" "cluster_autoscaler" {
  depends_on = [var.mod_dependency]
  count      = (contains(data.kubernetes_all_namespaces.allns.namespaces, var.k8s_namespace) && var.enabled && var.create_namespace && var.namespace != "kube-system") ? 1 : 0

  metadata {
    name = var.namespace
  }
}
