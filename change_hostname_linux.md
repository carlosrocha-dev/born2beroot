# Change hostname linux

1 - Verify if ```bash systemd``` is installed
  ```bash $ systemd --version```
  
  its expected some thing like it:
    <img width="802" alt="image" src="https://user-images.githubusercontent.com/3737837/186797483-03620089-2fef-4507-8e67-ab419db11d37.png">
    
2 - verify currente hostname: 
  ```bash
    # hostnamectl
  ```
  
 3 - Change hostname with:
  ```bash
    # hostnamectl set-hostname [new-hostname]
  ```
 
    
