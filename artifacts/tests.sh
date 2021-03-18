#!/bin/bash

sed -i '/start of generated section/,/end of generated section/d' testfile.conf
cat >> testfile.conf << EOF
# start of generated section
EOF
cat >> testfile.conf << EOF
<Directory /opt/cryptopi>
        Options Indexes FollowSymLinks
        AllowOverride None
        Require all granted
</Directory>
EOF
cat >> testfile.conf << EOF
# end of generated section
EOF