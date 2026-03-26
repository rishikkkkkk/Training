# Task 1 – Hello World Workflow
## Purpose of the Workflow:

The purpose of this workflow is to demonstrate a basic GitHub Actions pipeline. It verifies that automation is correctly set up by triggering on every push and executing a simple command

## Key Configuration Details:
1.  Workflow File Location
```.github/workflows/hello.yml```

2.  Workflow Trigger Event

on:
  push:

3.  Job Configuration
````
jobs:
  hello-job:
    runs-on: ubuntu-latest
````

4.  Job Step Executed

steps:
  - name: Print Hello Message
    run: echo "Hello GitHub Actions!"
![alt text](images/assessment-img/image-1.png)
![alt text](images/assessment-img/image.png)

# Task 2 – Basic Docker Build & Push 
## Purpose of the Workflow

The purpose of this workflow is to automate the process of building a Docker image from the application source code and pushing it to Docker Hub. This ensures consistent image creation and versioning using GitHub Actions.

## Key Configuration Details:
1.  .dockerignore: Prevents unnecessary files from being included in the Docker build context.
![alt text](images/assessment-img/image-2.png)
2.  Multi-stage Dockerfile
![alt text](images/assessment-img/image-3.png)
3.  Create GitHub Secrets
![alt text](images/assessment-img/image-4.png)
4.  Create Workflow File
![alt text](images/assessment-img/image-5.png)
5.  Pushed to trigger the workflow
![alt text](images/assessment-img/image-7.png)
6.  Verified the running workflow
![alt text](images/assessment-img/image-6.png)


# Task 3 – Shared Workflow Repository & Release 
## Purpose of the Workflow

To create a reusable GitHub Actions workflow that standardizes Docker build and push logic across repositories. This improves consistency, reusability, and maintainability by centralizing CI/CD logic.

## Implementation:
1.  Create a repo:
``` shared-workflows```
2.  Create Reusable Workflow
![alt text](images/assessment-img/image-8.png)
3.  Created a call workflow with develop branch and main 
![alt text](images/assessment-img/image-10.png)
4.  Create a caller workflow that uses the reusable workflow from the Workflow 
Repository release tag. 
![alt text](images/assessment-img/image-11.png)
![alt text](images/assessment-img/image-12.png)
5.  On push to develop branch → call the shared workflow to tag the image as 
staging-<commit_sha>. 
![alt text](images/assessment-img/image-13.png)
![alt text](images/assessment-img/image-14.png)
6.  On push to main branch → call the shared workflow to tag the image as 
prod-<version>. 
![alt text](images/assessment-img/image-15.png)
![alt text](images/assessment-img/image-16.png)

# Task 4 – Security & Notifications 
## Purpose of the Workflow

### Enhance the reusable Docker workflow by:
1.  Adding security scanning (detect vulnerabilities)
2.  Failing builds on high/critical issues
3.  Sending Slack notifications on success/failure

## Implementation:
1.  Extend the reusable workflow in the Workflow Repository with: 
    Image scanning (e.g., Trivy or Snyk). 
    Fail the pipeline if high/critical vulnerabilities are found. 
![alt text](images/assessment-img/image-19.png)
2.  Add a Slack notification step in the reusable workflow: 
    On success → send a message that the image was built and pushed. 
    On failure → send a message with the error summary. 
![alt text](images/assessment-img/image-20.png)
3.  Configure Slack credentials as GitHub Secrets. 
We will create a slack webhook and paste it to ```SLACK_WEBHOOK_URL``` in the Github Secrets. 
![alt text](images/assessment-img/image-21.png)

4.  Checked workflow:
![alt text](images/assessment-img/image-17.png)
![alt text](images/assessment-img/image-18.png)

5.  checked slack for notification ```githuc-ci-project-app```:
![alt text](images/assessment-img/image-22.png)

# did all practical in this github repo:
```[Github-repo](https://github.com/rishikkkkkk/ci-cd-assessment)```