Docker apache mysql php phpmyadmin mongodb
## una vez que arranca el docker se deben ejecutar estos comandos en el docker del Lamp
## se puede correr por consola o desde la consola de Portainer una que haya arrancado
## correr desde consola si lo hacen desde alli docker ps -a y ver el id del contenedor de LAMP
## docker exec -it 56d204b5be02 bash 

### root@56d204b5be02:/var/www/html# adduser fabian
### Adding user `fabian' ...
### Adding new group `fabian' (1000) ...
### Adding new user `fabian' (1000) with group `fabian' ...
### Creating home directory `/home/fabian' ...
### Copying files from `/etc/skel' ...
### New password: 
### Retype new password: 
### passwd: password updated successfully
### Changing the user information for fabian
### Enter the new value, or press ENTER for the default
###   Full Name []: fabian
###   Room Number []: 1
###   Work Phone []: 1
###   Home Phone []: 1
###   Other []: 1
### Is the information correct? [Y/n] y


    # composer init
    # ctr+c
    # composer require "mongodb/mongodb=^1.0.0"

    # Paciencia
    # exit
    # exit
### luego pueden ir a http://localhost:8000/testmongo.php y les insertara unos datos de prueba

