## Stage Copy Private Key
echo "Stage : Copy Private Key ... "
cp .vagrant/machines/DEVCICDNODEMASTER-01/virtualbox/private_key ansible_private_keys/node_master_private_key
cp .vagrant/machines/DEVCICDNODEWORKER-01/virtualbox/private_key ansible_private_keys/node_worker_private_key

## Stage Give Correct Permission For The Private Key
echo "Stage : Give Correct Permission For The Private Key ..."
chmod 600 ansible_private_keys/node_master_private_key
chmod 600 ansible_private_keys/node_worker_private_key
