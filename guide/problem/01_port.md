netstat -ano | findstr :8080
taskkill /PID 4460 /F

tasklist /FI "PID eq 12024"




netstat -ano | findstr :3306
tasklist | findstr 28864