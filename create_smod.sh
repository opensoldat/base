#!/bin/bash
cd shared; zip -r ../soldat.smod *; cd ..
cd client; zip -ur ../soldat.smod configs; cd ..
cd server; zip -ur ../soldat.smod configs; cd ..
echo "Created soldat.smod"
