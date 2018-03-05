This implementation of the class installer provides a way of performing all the operations atomically. 
The way it is performed is creating all the objects and meta objects in a paralell hierarchy and then 
it performs a bulk replace of all the objects and meta-objects.

It is used in the same way as the other ClassInstallers, through the use of AtomicClassInstaller class >> #make:

The ClassInstaller can be configured in auto commit mode, by the use of AtomicClassInstaller class >> autocommit, and 
AtomicClassInstaller class >> autocommit: 

If the autocommit is in true the behavior will be the same as the one expected in a normal ClassInstaller, making the modifications available 
as soon as they are performed. 

If the autocommit is in false, the commit operation should be triggered through the use of AtomicClassInstaller class >> commit.

