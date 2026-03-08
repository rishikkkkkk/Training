# Task 1 : Test all NGINX management commands
## Install NGINX and confirm the welcome page loads at http://localhost.
![alt text](image.png)
![alt text](image-1.png)
![alt text](image-2.png)
## Run each management command (start, stop, restart, reload, enable) and note what happens to the service each time.
### sudo systemctl stop nginx: Stops the service.
![alt text](image-3.png)
### sudo systemctl start nginx: Starts the service.
![alt text](image-4.png)
### sudo systemctl restart nginx: Stops and immediately starts the service again.
![alt text](image-5.png)
### sudo systemctl reload nginx: Reloads configuration without stopping the server.
![alt text](image-6.png)
![alt text](image-7.png)

## Intentionally add a syntax error to nginx.conf (e.g., missing semicolon) and confirm nginx -t catches it before any reload.
### sudo nano /etc/nginx/nginx.conf: 
![alt text](image-8.png)
### removed semicolon from worker_processes line:
![alt text](image-9.png)
### checked using nginx -t:
![alt text](image-10.png)
### fixed the worker_processes line and rechecked using nginx -t:
![alt text](image-11.png)

# Task 2 : Explore the NGINX config hierarchy
## Open /etc/nginx/nginx.conf and identify the main, events, and http contexts.
### opened /etc/nginx/nginx.conf identified the main context::
![alt text](image-12.png)
### identified the events context:
![alt text](image-13.png)
### identified the http context:
![alt text](image-14.png)
This block handles:
HTTP server settings
Virtual hosts
Logging
### Note the worker_processes and worker_connections values and research what changing them would do.
![alt text](image-15.png)
worker_processes auto: tells us no. of cpu cores that nginx matches 
worker_connections 768: Maximum connections each worker can handle.
### List all files currently in sites-available and sites-enabled and verify which symlinks exist.
![alt text](image-16.png)

# Task 3 : Host a multi-page static site
## Create a site under /var/www/mysite.local with at least 3 pages: index.html, about.html, contact.html.
Firstly we will create website directory with permissions:
![alt text](image-17.png)
## Write a proper server block config and enable it.
![alt text](image-18.png)
![alt text](image-19.png)
## Add mysite.local to /etc/hosts and verify all 3 pages load via http://mysite.local/about.html etc and also test what happens when you visit a non-existent page — confirm NGINX returns a 404.
![alt text](image-20.png)
![alt text](image-21.png)
![alt text](image-22.png)

# Task 4 : Run two Docker containers and proxy each on a different path
## Run two Docker containers: nginx:alpine on port 8081 and traefik/whoami on port 8082.
![alt text](image-24.png)
![alt text](image-23.png)
![alt text](image-25.png)
## Configure Nginx with two location blocks: /app1 proxying to :8081 and /app2 proxying to :8082.
![alt text](image-26.png)
![alt text](image-27.png)
## Verify both paths return distinct responses at http://myapp.local/app1 and http://myapp.local/app2.
![alt text](image-28.png)
## Confirm the X-Real-IP header is set correctly using the whoami endpoint.

# Task 5 : Host app1.local and app2.local with unique content and verify isolation

![alt text](image-29.png)
![alt text](image-30.png)
APP1 
![alt text](image-35.png)
APP2
![alt text](image-31.png)
![alt text](image-33.png)
![alt text](image-34.png)
![alt text](image-32.png)
## Disable app2.local (remove its symlink) and confirm http://app2.local returns a 404 or connection error while app1.local still works.
![alt text](image-36.png)
![alt text](image-37.png)
## Re-enable app2.local and reload NGINX.
![alt text](image-38.png)

# Task 6 : Diagnose and fix three common NGINX errors

## Cause a 403 Forbidden: set a file to chmod 600 and try to access it — then fix it.
![alt text](image-39.png)
## Cause a 502 Bad Gateway: set proxy_pass to a port with no container running — observe and fix it.
![alt text](image-40.png)
![alt text](image-41.png)
## Cause a config error: remove a closing brace from a server block — run nginx -t to catch it, then fix it.
![alt text](image-42.png)
![alt text](image-43.png)
## For each scenario, write down which log file contained the error and what the exact error message was.
![alt text](image-44.png)