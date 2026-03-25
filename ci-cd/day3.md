# Task 1: Create a Shared CI Quality Check Workflow
## Scenario
Your organization wants every project to run a Standard CI quality check
Instead of duplicating the same workflow in every repo, you will create a shared workflow.
Steps:
Create a central repository:
``` shared-workflows ```
Create workflow file:
``` .github/workflows/shared-ci.yml ```
Add workflow:
![alt text](images/day3/image.png)

``` Link: https://github.com/rishikkkkkk/shared-workflows/blob/main/.github/workflows/shared-ci.yml ```

# Task 2: Call Shared Workflow from Another Repositor
Create another repository:
```demo-project```
Create workflow:
```.github/workflows/use-shared-ci.yml```
Add workflow:
![alt text](images/day3/image-1.png)
Checked the workflow by pushing json:
![alt text](images/day3/image-4.png)

``` Link: https://github.com/rishikkkkkk/demo-project/blob/main/.github/workflows/use-shared-ci.yml ```

# Task 3: Modify Shared Workflow & Observe Impact
Update shared workflow:
```- run: echo "Shared workflow updated!"```
![alt text](images/day3/image-2.png)
Pushed changes.
Triggers workflow in demo project.
Observe updated output.
![alt text](images/day3/image-5.png)