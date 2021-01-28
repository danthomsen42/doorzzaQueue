# Doorzza Queue
A queue to be used by doorzza drivers to know who is next to deliver and to know the status of drivers

It will have two main front-ends:
  1. An app designed to run on an android tablet. 
      a. Displays the queue of all of the drivers on duty that night.
      b. The app will be the only device capable of adding a driver's account to the available drivers, so as to reduce the influence of bad actors
      c. The app will be able to force a user to log out, to rearange the queue order, and update the user's availabilty/status
      d. The app can permanently remove/disable a driver's account.
  
  2. A Web based app with a simple interface
      a. For the drivers to use to update their availability/status
      b. For drivers to log in/out as being available for deliveries.
      
The app will have a simple database backend used to store the drivers info and their current status. 
  1. It is used as a middle man for the Android and Web apps - Once one is updated, so is the other.
  2. The database will only store The driver's name, status, and an optional prefered name if desired or necessary.
