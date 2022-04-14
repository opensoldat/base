<div align="center">
  <img src="https://i.imgur.com/HrYPYjh.png" />
  <h2>Soldat</h2>
  <p>Base game content</p>
  <a href="https://discord.soldat.pl"><img src="https://img.shields.io/discord/234733999879094272.svg" /></a>
</div>

### Instructions

The content of this repository is meant to be bundled into 3 archive files:

- `soldat.smod` - Contains the base game files such as image, audio and animation files.
- `client.zip` - Contains client directory structure, configuration files and accessory files such as LICENSE and README.
- `server.zip` - Contains server directory structure, configuration files and accessory files such as LICENSE and README.

Internally, Soldat relies on a checksum to determine if the client and server have the same `soldat.smod` file. With zip archives, this is potentially fragile due to issues such as last modification date fields (described in more detail [here](https://reproducible-builds.org/docs/archives)). For this reason, the recommended way to get these archives is to download them from the [latest release](https://github.com/Soldat/base/releases/latest).

If you wish to create your own `soldat.smod` file, we provide a Python script `create_smod.py` to help you with this process. Run it from the root directory of this repository via `python3 create_smod.py` and it will create the archives for you. It attempts to produce the same byte-for-byte archive files regardless of what operating system it is run on, but it is potentially fragile due to the issues mentioned previously.

To learn move about `.smod` files, refer to [this post on the Soldat forums](https://forums.soldat.pl/index.php?topic=44917.0).

### Contributions

TBD

### Licensing

[CC BY 4.0](LICENSE.txt)

*Soldat and all the file formats the program produces are Copyright © 2001-2018 Michal Marcinkowski. All rights reserved.*
