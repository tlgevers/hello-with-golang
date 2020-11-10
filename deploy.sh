PROJECT_ID=tgevers-apps
gcloud services enable run.googleapis.com --project $PROJECT_ID
gcloud builds submit --tag gcr.io/$PROJECT_ID/hello:latest
gcloud run deploy --image gcr.io/$PROJECT_ID/hello --platform managed \
    --set-env-vars=PROJECT_ID=$PROJECT_ID
