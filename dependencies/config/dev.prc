# This is the PRC configuration file for developer servers and clients.
# If making a change here, please remember to add it to public_client.prc
# as well as deployment/server.prc if necessary.

# Client settings
window-title Toontown Online The Return [DEV BUILD]
server-version dev
sync-video #f
want-dev #f
preload-avatars #t
texture-anisotropic-degree 16
want-speedhack-fix #t


# Resource settings
vfs-mount resources/phase_3 /phase_3
vfs-mount resources/phase_3.5 /phase_3.5
vfs-mount resources/phase_4 /phase_4
vfs-mount resources/phase_5 /phase_5
vfs-mount resources/phase_5.5 /phase_5.5
vfs-mount resources/phase_6 /phase_6
vfs-mount resources/phase_7 /phase_7
vfs-mount resources/phase_8 /phase_8
vfs-mount resources/phase_9 /phase_9
vfs-mount resources/phase_10 /phase_10
vfs-mount resources/phase_11 /phase_11
vfs-mount resources/phase_12 /phase_12
vfs-mount resources/phase_13 /phase_13
vfs-mount resources/server /server
model-path /
default-model-extension .bam


# Server settings
want-rpc-server #f
rpc-server-endpoint http://localhost:8080/
eventlog-host 127.0.0.1
want-cheesy-expirations #t


# DC Files
# This is, oddly enough, in *reverse* order of their loading...
dc-file config/toon.dc
dc-file config/otp.dc


# Beta Modifications
# Temporary modifications for unimplemented features go here.
want-members #f
want-magic-words #f

# This is a temporary 'fix' for DistributedSmoothNodes... probably not the permanent solution to our problem, but it works for now.
smooth-lag 0.4
want-keep-alive #f



# Chat stuff
want-whitelist #f
want-blacklist-sequence #f
force-avatar-understandable #t
force-player-understandable #t


# Holidays and Events
force-holiday-decorations 6
want-arg-manager #f
want-mega-invasions #f
mega-invasion-cog-type tm
