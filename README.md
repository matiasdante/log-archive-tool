<h1 align="center">
  <br>
  <a href="https://github.com/matiasdante"><img src="https://bashlogo.com/img/logo/png/full_colored_light.png" alt="DevOps Projects" width="200"></a>
  <br>
  Log Archive Tool
  <br>
</h1>

<h4 align="center">Compress your logs folder and export it to another place</h4>

<p align="center">
  <a href="#Functions">Functions</a> •
  <a href="#Download">Download</a> •
  <a href="#How to use it">How to use it</a> •
  <a href="#Credits">Credits</a> 
</p>

## Functions
With this script you will be able to...
- Makes a backup of your logs in tar.gz
- Creates a folder named archive_logs.
- Creates a .txt file with all your executes of the script.

## Download
First of all you'll need git intalled on your server/machine. If you dont haven't, check the follow link. [Git](https://git-scm.com) 
You need to clone this repository like this: 
```bash
$ git clone https://github.com/matiasdante/log-archive-tool.git
```
## How to use it
1. Next, you need to access the folder with:
```bash
$ cd log-archive-tool
```
2. Then, you can just run a `ls -la` to list the folder contents, and you will see `log-archive-tool.sh`. Run the following command:
```bash
$ chmod +x log-archive-tool.sh
```
> This will give execution permission to the file. Now you can easily execute it.
3. Launch the script:
```bash
$ ./log-archive-tool.sh <$LOGS_FOLDER_PATH>
```

## Credits

* Made for the roadmap.sh projecto - server-performance-stats - https://roadmap.sh/projects/log-archive-tool
* [matutEv](https://github.com/matiasdante)
