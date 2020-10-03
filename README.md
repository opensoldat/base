<div align="center">
  <img src="https://i.imgur.com/HrYPYjh.png" />
  <h2>Soldat</h2>
  <p>Base game content</p>
  <a href="http://gather.soldat.pl/discord"><img src="https://img.shields.io/discord/234733999879094272.svg" /></a>
</div>

### Instructions

The content of this repository is meant to be bundled into an archive file, called *soldat.smod*. We provide scripts to help you with this process.
- For Linux we have create_smod.sh script, that you can run with ```bash create_smod.sh```.
- For Windows, we provide create_smod.cmd script.

Both scripts rely on ```zip``` command internally. On Linux, ```zip``` command is most likely available out of the box, depending on your Linux distribution. On Windows, ```zip``` command should be available after installing [FreePascal](https://www.freepascal.org/) (make sure you tick the "Free Pascal Utilities" box during installation) and adding FreePascal's path to your PATH environment variable. If this approach doesn't work for you, you can also get the ```zip``` command by installing [MSYS2](https://www.msys2.org/) or [Cygwin](https://www.cygwin.com/).

To learn more about *.smod* files, refer to [this post on Soldat forums](https://forums.soldat.pl/index.php?topic=44917.0).

### Notes
Generating a new *soldat.smod* file on every Soldat build is not recommended. Internally, Soldat relies on file checksum to make sure client and server have the same *soldat.smod* file. However, archives created with ```zip``` command have a different checksum every time you recreate the *.smod* bundle. This is related to metadata (such as last modification date) being stored in archive files.

Theoretically, this could be solved by passing some flags (like ```-X```) to ```zip``` command, so that we strip unnecessary data. Other approaches include using a different archive format that would produce more reliable outputs. Such solutions might work on the same platform, but I was unable to get it to work properly on both Windows and Linux at the same time.

So, in order to prevent checksum mismatches across different builds, we provide a *soldat.smod* file that can be shared across multiple platforms. You can download latest version in *Releases* section of this repository.

To learn more about these issues, refer to [this explanation](https://reproducible-builds.org/docs/archives/).
  
### Contributions

TBD


### Licensing

[CC BY 4.0](LICENSE.md)

*Soldat and all the file formats the program produces are Copyright © 2001-2018 Michal Marcinkowski. All rights reserved.*
