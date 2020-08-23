resource "null_resource" "virtualroute-ingress" {

  provisioner "local-exec" {
    command = "kubectl apply -f  ${path.module}/virtualroute-crd/ --validate=false"
  }
   depends_on = [kubernetes_service.weather-service, kubernetes_service.echo-service, kubernetes_service.nginx_kic_microservice_proxy_service]
}