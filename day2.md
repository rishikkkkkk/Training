# Lab 1 — SSH Key Setup

---

## Objective
Configure SSH key-based authentication between two EC2 instances, copy the public key to the remote server, disable password login, and verify key-based access.


---

## Procedure

1. Generated a new SSH key pair using `ssh-keygen`.
2. Copied the public key to the remote EC2 server using `ssh-copy-id`.
3. Modified SSH configuration to disable password authentication.
4. Restarted the SSH service to apply changes.
5. Tested login to confirm key-based authentication.

---

## Output

- SSH key pair created successfully on the client EC2 instance. 

![alt text](<images/Screenshot 2026-02-25 152510.png>)
- Public key added to the remote server’s `authorized_keys` file.  
![alt text](<images/Screenshot 2026-02-25 190059.png>)
- Password authentication disabled in `/etc/ssh/sshd_config`.
![alt text](<images/Screenshot 2026-02-25 190524.png>)  
- Verified successful login using SSH key only.  

---

✅ **Result:** Secure SSH key-based authentication established between two EC2 instances.

# Lab 2 — Cron Job

---

## Objective
Create and schedule a cron job that appends log data to a file at regular intervals.


---

## Procedure

1. Opened the cron table for editing using `crontab -e`.  
2. Added the following cron job entry:


![alt text](images/day2t2.png)
# Lab 3 — systemd Timer

---

## Objective
Create and configure a systemd service and timer to automate a simple logging script.

---

## Procedure

1. Created a simple script that writes a log entry

2. Created a **service file**

3. Created a **timer file**

4. Reloaded systemd and started the timer

5. Verified the timer and checked logs

---

## Output

![alt text](<images/Screenshot 2026-02-25 195948.png>)
- Service and timer files created successfully.  
![alt text](<images/Screenshot 2026-02-25 200000.png>)
![alt text](<images/Screenshot 2026-02-25 200007.png>)
- Timer triggers the service every minute. 
![alt text](<images/Screenshot 2026-02-25 200018.png>) 
- Verified `/tmp/systemd.log` is updated automatically with “Hello Systemd”.  

---






