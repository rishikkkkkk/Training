# Lab 1 — Verify System Network Identity

## Objective
Verify how the Linux system is identified on the network and understand how network traffic leaves the machine.

## Procedure

1. Checked available network interfaces using `ip addr`.
2. Identified system IPv4 address assigned to interface **enp0s3**.
3. Verified default gateway using `ip route`.
4. Displayed system IP address using `hostname -I`.
5. Tested local connectivity by pinging the gateway.
6. Verified internet connectivity using `ping google.com`.
7. Traced packet routing path using `traceroute`.
8. Verified DNS resolution using `dig google.com`.
9. Tested local system communication using system IP address.

---

## Output
- Checked available network interfaces using `ip addr`
- Got network interface information for **enp0s3**
- Got default gateway
- also Ping
![alt text](<images/Screenshot 2026-02-26 124812.png>)

- Used Ping domain and Traceroute
![alt text](<images/Screenshot 2026-02-26 125042.png>)

- Used dig to confirm DNS resolution

 ![alt text](<images/Screenshot 2026-02-26 125135.png>)

The system network identity and connectivity were successfully verified.

# Lab 2 — Test Internet Connectivity Flow

## Objective
Verify each step required for a Linux system to access the internet and identify connectivity or DNS-related issues.


## Procedure

1. Tested internet connectivity using Google's public DNS IP address (8.8.8.8).
2. Verified DNS resolution by pinging the domain name google.com.
3. Confirmed that the domain name was successfully resolved into an IP address.
---

## Output
![alt text](images/image.png)

## Conclusion
The internet connectivity flow was successfully verified.  
The system can access external networks, resolve domain names, and route traffic through the configured gateway.

# Lab 3 — Analyze DNS in Detail

## Objective
Investigate how domain names are resolved into IP addresses and analyze DNS server usage, response time, and failure behavior.


## Procedure

1. Used the `dig` command to resolve the domain name google.com.
2. Observed returned IP address, DNS server used, and query response time.
3. Verified DNS resolution using the `nslookup` command.
4. Identified both IPv4 and IPv6 addresses returned by the DNS server.
5. Tested DNS failure behavior by querying a non-existent domain.


## Output

![alt text](images/image-1.png)

## Conclusion
DNS analysis was successfully performed.  
The system correctly resolved domain names into IP addresses using the configured DNS server and properly handled resolution failure for non-existent domains.

# Lab 4 — Host a Simple Website Locally

## Objective
Install a web server and host a simple webpage locally to demonstrate that HTTP traffic successfully reaches the system.


## Procedure

1. Installed the Nginx web server using the package manager.
2. Verified that the Nginx service was running.
3. Created a simple HTML page inside `/var/www/html/index.html`.
4. Tested the web server locally using the curl command.
5. Retrieved system IP address using `ip addr`.
6. Accessed the hosted webpage using system IP address.
7. Verified that HTTP requests successfully reached the server.

---

## Output

### Nginx service was installed and running successfully.

### Local Website Test
curl http://localhost
Hello from my server
![alt text](<images/Screenshot 2026-02-26 141425.png>)

![alt text](<images/Screenshot 2026-02-26 141743.png>)

### Access Using System IP
```
curl http://10.0.2.15
Hello from my server
```
![alt text](<images/Screenshot 2026-02-26 142011.png>)

Result:  Website accessible using system network IP.

## Conclusion
A simple website was successfully hosted locally using the Nginx web server.  

# Lab 5 — Check Listening Ports

## Objective
Verify that the web server is actively listening on the HTTP port and confirm that stopping the service removes the listening port.


## Procedure

1. Checked active listening ports using the `ss -tuln` command.
2. Identified that port **80 (HTTP)** was in LISTEN state.
3. Confirmed that the Nginx web server was accepting connections.
4. Stopped the Nginx service using systemctl.
5. Verified that port 80 was no longer listening.
6. Tested HTTP access using curl to confirm service shutdown.

---

## Output

![alt text](images/image-2.png)

## Conclusion
The listening ports were successfully analyzed using the `ss` command.  
Port 80 was active while the Nginx server was running and disappeared after stopping the service, confirming that the web server controls HTTP port availability.

# Lab 6 — Test Application Connectivity

## Objective
Verify application connectivity by fetching HTTP headers and downloading web content from the locally hosted web server.

## Procedure

1. Sent an HTTP request to the local web server using the curl command to retrieve response headers.
2. Observed HTTP status code and server response details.
3. Downloaded webpage content using wget.
4. Verified successful download of the hosted webpage.
5. Confirmed application accessibility through HTTP response.

---

## Output

### Observation:
- Status Code: **200 OK**
- Server: **Nginx**
- Application responding successfully.

![alt text](images/image-3.png)

## Conclusion
Application connectivity was successfully verified.  
The system responded with valid HTTP headers and allowed successful content download, confirming that the locally hosted web application is accessible and functioning correctly.

# Lab 7 — Simulate Firewall Restriction (UFW)

## Objective
Enable and configure the Uncomplicated Firewall (UFW) to control network access by allowing web traffic while managing system port accessibility.

## Procedure

1. Enabled the UFW firewall service.
2. Allowed HTTP traffic on port 80.
3. Allowed HTTPS traffic on port 443.
4. Verified firewall configuration using ufw status.
5. Confirmed firewall rules were successfully applied.


## Output

![alt text](images/image-4.png)

## Conclusion
The UFW firewall was successfully enabled and configured to permit web traffic.  

# Lab 8 — Create a Local Domain Using /etc/hosts

## Objective
Configure a local domain name using the `/etc/hosts` file and verify local DNS resolution without relying on an external DNS server.

## Procedure

1. Opened the hosts configuration file using nano editor.
2. Added a custom local domain entry mapping to the loopback address.
3. Saved and exited the hosts file.
4. Verified domain resolution using the ping command.
5. Accessed the locally hosted website using the custom domain name through a web browser.

![alt text](images/image-5.png)
## Output
![alt text](images/image-6.png)


## Conclusion
A local domain was successfully created using the `/etc/hosts` file.

The system resolved the custom domain name without external DNS services, demonstrating local DNS resolution and successful web server access.


