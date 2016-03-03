# docker-image

This repository is simulation environment for easy use.

##Library
###[Gazebo](http://gazebosim.org/)
- Gazebo version : 6.5.1 
- gzweb6

###[icub-gazebo](https://github.com/robotology/icub-gazebo)
You can use [icub](http://icub.org/). In this docker image, you can use `icub` and `icub_with_cameras`.

If you want to use other icub data and you use gzweb, copy directory in `icub-gazebo/` to `gzweb/http/client/assets/`

ex)You want to use `icub_feet_fixed`,run this docker images in /bin/bash/ and run below,

`cp -r icub-gazebo/icub_feet_fixed gzweb/http/client/assets/`

###[YARP](http://yarp.it/)
- YARP version : 3.3.64.13

For control icub. And install python bindings. 


If YARP say Aborting,delete `/root/.config/yarp/yarp.conf`.

###[gazebo-yarp-plugins](https://github.com/robotology/gazebo-yarp-plugins)
- install in `usr/local`


###[anaconda](https://www.continuum.io/)
- anaconda version : 2.2.0

For ipython notebook ,and chainer.

<strong>[Warning]</strong>
In this docker image all hosts connect ipython notebook.
If you don't want it, pleasse set ipython notebook your own.

##How to use
1.run docker image in /bin/bash

`sudo docker run -it <imageID> /bin/bash`

2.run programs

`cd ~/`
`./start_program.sh`

Then, when programs operate correctky, `ps` includes node x2, ipython, yarpserver, gzserver and Xvfb.

3.start simulator and ipython notebook

In your host PC, you access 

`http://<your docker IP>:8080`
`http://<your docker IP>:8888`

in your web browser.

4.stop programs

`./stop_program.sh`