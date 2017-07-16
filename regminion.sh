# pip install piserialnumber
serial_id=`python -m piserialnumber`
minion_id=`cat /etc/salt/minion | grep -e "^id:" | cut -d' ' -f2`
echo serial_id: $serial_id
echo minion_id: $minion_id
curl -F "serial_id=${serial_id}" -F "minion_id=${minion_id}" -F "command=register" http://lohengrin.uedasoft.com/monitor2/saltminion.php
