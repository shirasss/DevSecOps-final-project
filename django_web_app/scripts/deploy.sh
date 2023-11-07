

appname=devconnect
echo "enter the version"
read version 
image_name=django_web_app-web:latest


gcloud auth login
artifact_registry_image=me-west1-docker.pkg.dev/devconnect-final-project/shira-shani-artifacts/${appname}:${version}
docker tag ${image_name} ${artifact_registry_image} 
docker push ${artifact_registry_image}


# apiVersion: apps/v1
# kind: Deployment
# metadata:
#   name: "app-deployment"
#   namespace: production
# spec:
#   replicas: 1
#   selector:
#     matchLabels:
#       app: "app-deployment"
#   template:
#     metadata:
#       labels:
#         app: "app-deployment"
#     spec:
#       tolerations:
#         - key: "webapp"
#           operator: "Equal"
#           value: "mywebapp"
#           effect: "NoExecute"
#       containers:
#         - name: "devconnect"
#           image: "me-west1-docker.pkg.dev/devconnect-final-project/shira-shani-artifacts/devconnect:v1.0.0"
#           # Add other container settings as needed
