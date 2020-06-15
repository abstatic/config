source bootstrap.sh

# python2 pip manual setup is required before this

# clone the git repos
# this is specific to delivery team
git clone ssh://git@repo.bloomreach.com:8443/prodops/prodops.git
git clone ssh://git@repo.bloomreach.com:8443/brsm/bloomique.git
git clone ssh://git@repo.bloomreach.com:8443/brsm/caterpillar.git
git clone ssh://git@repo.bloomreach.com:8443/brsm/cms.git
git clone ssh://git@repo.bloomreach.com:8443/brsm/loadrunner.git
git clone ssh://git@repo.bloomreach.com:8443/brsm/snap-pipeline.git
git clone ssh://git@repo.bloomreach.com:8443/brsm/arka.git
git clone ssh://git@repo.bloomreach.com:8443/brsm/sunbird.git

# setup for FE
# install Fabric
pip install -r ~/br/work/src/mobile/conf/pip-fabric.txt

# mnt folder
sudo mkdir -p /mnt/production
sudo chown -R "${USER}" /mnt

# next we execute a mvn install on br/work/src
cd ~/br/work/src
mvn install -DskipTests

pip install nose
