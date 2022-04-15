<div align="center">
  <img src="https://i.imgur.com/HrYPYjh.png" />
  <h2>Soldat</h2>
  <p>Base game content</p>
  <a href="https://discord.soldat.pl"><img src="https://img.shields.io/discord/234733999879094272.svg" /></a>
</div>

### Layout

The contents of this repository are meant to be bundled into 3 archive files:

- *soldat.smod* - Contains the base game files such as image, audio and animation files. More information on *.smod* files can be found in [this post on the Soldat forums](https://forums.soldat.pl/index.php?topic=44917.0).
- *client.zip* - Contains client directory structure, configuration files and accessory files.
- *server.zip* - Contains server directory structure, configuration files and accessory files.

### Instructions

The recommended way to get these files is to download them from the [latest release](https://github.com/Soldat/base/releases/latest). This way, your *soldat.smod* is guaranteed to have the same SHA1 as the version used by official soldatserver releases (which is required to join servers with `sv_pure` set).

If you wish to create your own *soldat.smod* file, run `python3 create_smod.py` from the root of this repository, and it will create the archives for you. It attempts to produce the same byte-for-byte archive files regardless of what operating system it is run on, but it is potentially fragile due to its reliance on Python's shipped implementation of zip.

### Contributions

TBD

### Licensing

[CC BY 4.0](LICENSE.txt)

*Soldat and all the file formats the program produces are Copyright © 2001-2018 Michal Marcinkowski. All rights reserved.*
