
image_name=jenkins
local_image_name=jenkins_push
echo "enter the version"
read version
artifact_registry_image=me-west1-docker.pkg.dev/devconnect-project/shira-shani-artifacts/${image_name}:${version}


gcloud auth login
docker tag ${local_image_name} ${artifact_registry_image}
docker push ${artifact_registry_image}



# gcloud compute ssh shira-shani-instance --project devconnect-final-project --zone me-west1-a  --command "gcloud auth configure-docker me-west1-docker.pkg.dev; docker pull ${artifact_registry_image}; docker run -p 8080:5000 ${artifact_registry_image}"

# gcloud compute ssh shira-shani-instance --project devconnect-final-project --zone me-west1-a
docker pull \
    me-west1-docker.pkg.dev/devconnect-final-project/shira-shani-artifacts/devconnect:v1.0.0
