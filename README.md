### Running this bash script creates a tmux session in the current working directory with 5 windows as a starting point for fullstack projects.  
- \[0\] backend server  
- \[1\] frontend server  
- \[2\] backend code  
- \[3\] frontend code  
- \[4\] bash  

### usage  
- clone this repo to your local machine  
- ON LINUX: move or copy bash script file to /usr/local/bin folder (or wherever binary executables are stored in your file system)  
- change permissions for the file with: ```chmod u+x fullstack_tmux_session.sh```  
- change ownership of file with ```chown [your user name] fullstack_tmux_session.sh```  
- RECOMMENDED: rename file without the .sh extension  
- create a project folder for fullstack development and cd into it.  
- type ```fullstack_tmux_session``` (or whatever you named the bach script) into your project's root directory.  
  

tmux will attach to the session and you're all set! 
