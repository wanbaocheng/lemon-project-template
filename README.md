## Setup and Build the Template

This is fairly easy. First, clone the project template repository and step
into the dir, as follows (you've probably done it already if you read this
file).
```
$ git clone https://github.com/wanbaocheng/lemon-project-template.git myproject
$ cd myproject
```
As you probably want to use LEMON in your project, you will need it
too. For this you have to options. You can either install it somewhere
or use a local copy of LEMON dedicated to your project. This later
option is especially usefull if you also modify/develop LEMON along
with your project, or want to use a specific version.

- Use a preinstalled version

    See http://lemon.cs.elte.hu/trac/lemon/wiki/InstallGuide for
    instructions on how to install LEMON. If you installed it to a
    non-standard place, you must let CMAKE know where to find it in
    the LEMON_ROOT_DIR config variable.

- Use LEMON as a subproject

    Just simply copying the LEMON source code into the 'lemon' subdir
    will do the job. Namely, you can either extract a release tarball
```
$ git submodule init
$ git submodule update
```
or
```
$ rm -r lemon
$ git clone https://github.com/wanbaocheng/lemon.git lemon
```
Then run CMAKE to create the makefiles as usual.
```
$ mkdir build
$ cd build
$ cmake ..
```


## Setup Your Own Project

Edit CMakeLists.txt to change the name of the project and the source
files. Simply follow the instructions in CMakeLists.txt.
