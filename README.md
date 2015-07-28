# launchtabs
## author: vvn
script for OSX to open new tabs with custom names and run specified commands

**modify and save launchtabs.sh to /usr/local/bin as launchtabs**  
**then chmod +x /usr/local/bin/launchtabs**

**to create function "tabname":**  
1) paste below into .bash_profile or .bashrc  
2) save & close  
3) type 'source [path to profile]'  
4) now rename tab by typing 'tabname [tab title]'  

    tabname() {
      TABSTRING="\e]1;$1\a"
      printf $TABSTRING
      }
