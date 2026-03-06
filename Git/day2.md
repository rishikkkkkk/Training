# Scenario 1 – Wrong Branch Commit
## Situation:
1. You are supposed to work on feature/login.
2. By mistake, you commit directly to main.
3. The commit has not been pushed yet.
## Task:
Fix the situation properly:
Move the commit to a new branch feature/login
Remove it from main
Keep clean history
Push correctly
## Solution:
![alt text](image.png)
![alt text](image-1.png)
![alt text](image-2.png)
![alt text](image-3.png)
![alt text](image-4.png)
![alt text](image-5.png)
![alt text](image-6.png)

# Scenario 2 – Bad Commit Already Pushed
## Situation:
1. Developer A pushes to main.
2. You pull changes.
3. You make a bad commit (wrong config change).
4. You push it to remote.
5. Now the team says the change is wrong.
## Task:
Fix without rewriting history.
Undo the change safely
Keep history intact
Push fix
## Solution:
### Firstly will pull changes the dev a made:
![alt text](image-18.png)
### Making a bad commit:
![alt text](image-19.png)
### Pushing bad commit :
![alt text](image-20.png)
### Fixing it without rewriting history:
![alt text](image-22.png)
![alt text](image-21.png)
![alt text](image-23.png)


# Scenario 3 – Merge Conflict in Team Environment
## Situation:
1. You are working on branch feature/payment.
2. Developer A modifies the same file in main.
3. You try to merge main into your branch.
4. A merge conflict happens.
## Task:
Identify conflict
Resolve manually
Remove conflict markers
Complete merge
Push updated branch
## Solution:
### Created a feature/payment branch:
![alt text](image-8.png)
### Created a file of main branch:
![alt text](image-9.png)
### Created same file in feature/payment branch:
![alt text](image-10.png)
![alt text](image-11.png)
### Now merging main branch to feature/payment branch:
![alt text](image-12.png)
![alt text](image-13.png)
### git status:
![alt text](image-14.png)
### checked the conflicted file:
![alt text](image-15.png)
### solved the conflict manually:
![alt text](image-16.png)
### verified using status:
![alt text](image-17.png)