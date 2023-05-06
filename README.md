
## Create custom alias 

* Enter the user's directory and create the directory named alias
    * `cd  ~/`
    * `mkdir alias`
* Then copy the sh files that are in the alias directory of the repository to the one you just created

* Now we have to edit the .bashrc file in this case we will use nano

    * `sudo nano ~/.bashrc`

* Create a variable containing the directory where the sh files are located.
    * `directory_alias=~/alias`

* After that you have to create the alias (put the name you want) 'php_change'.
    * `alias php_change='sh $directory_alias/php_version.sh'`

* After saving you have to restart the service, by executing the following command
    
    * `source ~/.bashrc`