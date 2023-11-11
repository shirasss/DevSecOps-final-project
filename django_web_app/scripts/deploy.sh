

appname=devconnect
echo "enter the version"
read version 
image_name=django-update:latest


gcloud auth login
artifact_registry_image=me-west1-docker.pkg.dev/devconnect-final-project/shira-shani-artifacts/${appname}:${version}
docker tag ${image_name} ${artifact_registry_image} 
docker push ${artifact_registry_image}


# apiVersion: apps/v1
# kind: Deployment
# metadata:
#   name: "app-deployment-shira-shani"
#   namespace: production
# spec:
#   replicas: 1
#   selector:
#     matchLabels:
#       app: "app-deployment-shira-shani"
#   template:
#     metadata:
#       labels:
#         app: "app-deployment-shira-shani"
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

# kubectl expose deployment app-deployment --type=LoadBalancer -n production --port=80


# apiVersion: v1
# kind: Service
# metadata:
#   name: shira-shani-service # Adjust the name as desired
#   namespace: production  # Change the namespace if needed
# spec:
#   selector:
#     app: mywebapp  # Adjust the label selector to match your pods
#   ports:
#     - protocol: TCP
#       port: 8000  # Adjust the port if your application listens on a different port
#       targetPort: 8000  # Adjust the targetPort if your application uses a different port
#   type: LoadBalancer